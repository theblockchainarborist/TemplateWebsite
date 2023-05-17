const {contentService} = require('../services');


const getAllPageContent = async (req, res) => {
    const result = await contentService.getAllPageContent(req);
    res.send(result);
};

const getPageContent = async (req, res) => {
    const result = await contentService.getPageContent(req.query);
    res.send(result);
};

const getPageContentByCategory = async (req, res) => {
    const result = await contentService.getPageContentByCategory(req.query);
    res.send(result);
}

const postPageContent = async (req, res) => {
    const result = await contentService.postPageContent(req.query);
    res.send(result);
};

const getPageSections = async (req, res) => {
    const result = await contentService.getPageSections(req.query);
    res.send(result);
};


module.exports = {
    getAllPageContent,
    getPageContent,
    postPageContent,
    getPageContentByCategory,
    getPageSections
};