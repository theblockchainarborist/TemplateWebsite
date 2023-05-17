const database = require('../database');


const getMenuItems = async (req, res) => {
    try {
        const queryParams = 'id, name, submenu_route';
        const readAllQuery = `SELECT ${queryParams} FROM menu_items`;
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

const getSubMenuItems = async (req, res) => {
    try {
        const queryParams = 'id, name, menu_item_id';
        const readAllQuery = `SELECT ${queryParams} FROM submenu_options WHERE menu_item_id = ` + req.buttonId;
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
    getMenuItems,
    getSubMenuItems
};