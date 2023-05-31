const database = require('../database');


const getAllPageContent = async (req, res) => {
    try {
        const queryParams = 'id, route, category, title, affiliate_link, link_text, view_count';
        const readAllQuery = `SELECT ${queryParams} FROM page_content ORDER BY view_count DESC`;
        const { rows } = await database.query(readAllQuery);

        if (rows !== undefined) {
            let response = {
                status: 200,
                message: rows
            }
            return response;
        } else {
            let response = {
                status: 400,
                message: "Error"
            }
            return response;
        }

    } catch (error) {
        console.log(error);
    }
}

const getPageContent = async (req, res) => {
    try {
        const queryParams = 'id, route, category, title, affiliate_link, link_text, view_count';
        const readAllQuery = `SELECT ${queryParams} FROM page_content WHERE id = ` + req.pageNumber + 'ORDER BY view_count DESC;';
        const { rows } = await database.query(readAllQuery);

        if (rows !== undefined) {
            let response = {
                status: 200,
                message: rows
            }
            return response;
        } else {
            let response = {
                status: 400,
                message: "Error"
            }
            return response;
        }

    } catch (error) {
        console.log(error);
    }
}

/* Get page content by category */
const getPageContentByCategory = async (req, res) => {
    try {
        const queryParams = 'id, route, category, title, affiliate_link, link_text, view_count';
        const readAllQuery = `SELECT ${queryParams} FROM page_content WHERE category = ` + "'" + req.category + "' ORDER BY view_count DESC;";
        const { rows } = await database.query(readAllQuery);

        if (rows !== undefined) {
            let response = {
                status: 200,
                message: rows
            }
            return response;
        } else {
            let response = {
                status: 400,
                message: "Error"
            }
            return response;
        }

    } catch (error) {
        console.log(error);
    }
}


const postPageContent = async (req, res) => {
    try {
        if (req.pageId === undefined || req.viewCount === undefined) {
            let response = {
                status: 400,
                message: "Error in postPageContent - route is undefined and must be defined."
            }
            return response;
        }

        const postQuery = 'UPDATE page_content SET view_count = ' + req.viewCount + ' WHERE id = ' + req.pageId + ';';
        
        const { rows } = await database.query(postQuery);

        if (rows !== undefined) {
            let response = {
                status: 200,
                message: rows
            }
            return response;
        } else {
            let response = {
                status: 400,
                message: "Error"
            }
            return response;
        }

    } catch (error) {
        console.log(error);
    }
}

const getPageSections = async (req, res) => {
    try {
        const queryParams = 'id, page_content_id, image_path, text, decoration';
        const readAllQuery = `SELECT ${queryParams} FROM page_sections WHERE page_content_id = ` + req.id;
        const { rows } = await database.query(readAllQuery);

        if (rows !== undefined) {
            let response = {
                status: 200,
                message: rows
            }
            return response;
        } else {
            let response = {
                status: 400,
                message: "Error"
            }
            return response;
        }

    } catch (error) {
        console.log(error);
    }
}


module.exports = {
    getAllPageContent,
    getPageContent,
    getPageContentByCategory,
    postPageContent,
    getPageSections
};