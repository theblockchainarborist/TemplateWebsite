const {menuService} = require('../services');


const getMenuItems = async (req, res) => {
    const result = await menuService.getMenuItems(req);
    res.send(result);
};

const getSubMenuItems = async (req, res) => {
    const result = await menuService.getSubMenuItems(req.query);
    res.send(result);
};


module.exports = {
    getMenuItems,
    getSubMenuItems
};