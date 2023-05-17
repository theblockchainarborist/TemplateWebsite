const database = require('../database');

/* Get Knowledge Center Data */
const getKnowledgeCenterPage = async (req, res) => {
    try {
        // First we get the page
        const queryParams = 'id, page_route, title';
        const readAllQuery = `SELECT ${queryParams} FROM knowledge_center WHERE knowledge_center.page_route = ` + "'" + req.pageRoute + "'";
        const { rows } = await database.query(readAllQuery);

        // Then we get all sections for this page.
        if (rows !== undefined) {
            let thisPageId = rows[0].id;

            const sectionQueryParams = 'id, knowledge_center_id, image_path, text, decoration';

            const readSectionsQuery = `SELECT ${sectionQueryParams} FROM knowledge_center_sections WHERE knowledge_center_id = ` + "'" + thisPageId + "'";


            const sectionsResponse = await database.query(readSectionsQuery);

            rows[0].sections = sectionsResponse.rows;

            if (rows[0].sections !== undefined) {
                let response = {
                    status: 200,
                    message: rows
                }
                return response;
            } else {
                let response = {
                    status: 400,
                    message: "Error getting knowledge center sections."
                }
                return response;
            }
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
    getKnowledgeCenterPage
};