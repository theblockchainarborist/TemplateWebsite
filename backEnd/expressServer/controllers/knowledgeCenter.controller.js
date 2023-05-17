const {knowledgeCenterService} = require('../services');

const getKnowledgeCenterPage = async (req, res) => {
    const result = await knowledgeCenterService.getKnowledgeCenterPage(req.query);
    res.send(result);
};

module.exports = {
    getKnowledgeCenterPage
};