const database = require('../database');


const getAllPageContent = async (req, res) => {
    try {
        const queryParams = 'id, route, category, title, affiliate_link, link_text';
        const readAllQuery = `SELECT ${queryParams} FROM page_content ORDER BY id DESC`;
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
        const queryParams = 'id, route, category, title, affiliate_link, link_text';
        const readAllQuery = `SELECT ${queryParams} FROM page_content WHERE id = ` + req.pageNumber;
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
        const queryParams = 'id, route, category, title, affiliate_link, link_text';
        const readAllQuery = `SELECT ${queryParams} FROM page_content WHERE category = ` + "'" + req.category + "'";
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

/* 
    Expected Optional Params:
        "route": req.route,         // The route param to the page.
        "category": req.category,   // The category of the page.
        "title": req.title,         // The title of the page.
        "affiliate_link": req.affiliate_link,   // The affiliate link for page.
        "link_text": req.link_text  // The text for the affiliate link btn.
*/

const postPageContent = async (req, res) => {
    try {

        if (req.route === undefined) {
            let response = {
                status: 400,
                message: "Error in postPageContent - route is undefined and must be defined."
            }
            return response;
        }

        
        const postQuery = 'INSERT INTO page_content (route, category, title, link_text, affiliate_link) VALUES (' + req.route + ', ' 
                                            + req.category + ', '
                                            + req.title + ', '
                                            + req.link_text + ', '
                                            + req.affiliate_link + ');';
        
        const { rows } = await database.query(postQuery);

        console.log("postPageContent 'rows' value");
        console.log(rows);

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