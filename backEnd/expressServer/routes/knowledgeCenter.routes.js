const express = require('express');
const knowledgeCenterController = require('../controllers/knowledgeCenter.controller');

const router = express.Router();

router
    .route('')
    .get(knowledgeCenterController.getKnowledgeCenterPage);


module.exports = router;