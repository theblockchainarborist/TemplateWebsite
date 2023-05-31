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
    .route('/page')
    .put(contentController.postPageContent);

router
    .route('/page/sections')
    .get(contentController.getPageSections);

router
    .route('/category')
    .get(contentController.getPageContentByCategory)

module.exports = router;