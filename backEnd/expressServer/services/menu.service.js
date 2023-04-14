const database = require('../database');


const getMenuItems = async (req, res) => {
    try {
        const readAllQuery = 'SELECT * FROM menu_items';
        const { rows } = await database.query(readAllQuery);
        return rows;

    } catch (error) {
        console.log(error);
    }
}

const getSubMenuItems = async (req, res) => {
    try {
        const readAllQuery = 'SELECT * FROM submenu_options WHERE menu_item_id = ' + req.buttonId;
        const { rows } = await database.query(readAllQuery);
        return rows;

    } catch (error) {
        console.log(error);
    }
}


module.exports = {
    getMenuItems,
    getSubMenuItems
};