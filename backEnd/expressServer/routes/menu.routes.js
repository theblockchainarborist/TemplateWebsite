const express = require('express');
const menuController = require('../controllers/menu.controller');

const router = express.Router();

router
    .route('')
    .get(menuController.getMenuItems);

router
    .route('/submenu')
    .get(menuController.getSubMenuItems)

module.exports = router;