const express = require('express');
const contentController = require('../controllers/content.controller');

const router = express.Router();

router
    .route('')
    .get(contentController.getAllPageContent);

router
    .route('/page')
    .get(contentController.getPageContent);

router
    .route('/page/sections')
    .get(contentController.getPageSections);

module.exports = router;