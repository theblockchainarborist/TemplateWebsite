const database = require('../database');


const getAllPageContent = async (req, res) => {
    try {
        const readAllQuery = 'SELECT * FROM page_content';
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
        const readAllQuery = 'SELECT * FROM page_content WHERE id = ' + req.pageNumber;
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

const getPageSections = async (req, res) => {
    try {
        const readAllQuery = 'SELECT * FROM page_sections WHERE page_content_id = ' + req.pageNumber;
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
    getPageSections
};