const express = require('express');
const menuRoute = require('./menu.routes');
const contentRoute = require('./content.routes');

const router = express.Router();

const defaultRoutes = [
    {
        path: '/menu',
        route: menuRoute
    },
    {
        path: '/content',
        route: contentRoute
    }
];

defaultRoutes.forEach((route) => {
    router.use(route.path, route.route);
});

module.exports = router;