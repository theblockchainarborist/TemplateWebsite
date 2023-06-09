import axios from 'axios';

const http = axios.create({
    baseURL: "https://server.thermalreviewer.com",
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
    }
});

/* Returns All Pages */
async function getAllPageContent() {
    return http.get('/content')
            .then(response => {
                if (response.data.status !== 200) {
                    console.log("Error encountered in getAllPageContent");
                    return;
                } else {
                    return response.data.message;
                }
            });
}

/* Returns Requested Page by Page ID */
async function getPageContent(pageId) {
    return http.get('/content/page', {params: pageId})
            .then(response => {
                if (response.data.status !== 200) {
                    console.log("Error encountered in getAllPageContent");
                    return;
                } else {
                    return response.data.message;
                }
            });
}

/* Adds 1 to the page view count */
async function postPageViewCount(viewCount) {
    return http.put('/content/page', null, {params: viewCount})
            .then(response => {
                if (response.data.status !== 200) {
                    console.log("Error encountered in postPageViewCount");
                    return;
                } else {
                    return response.data.message;
                }
            });
}

/* Returns page content by category */
async function getPageContentByCategory(category) {
    return http.get('/content/category', {params: category})
            .then(response => {
                if (response.data.status !== 200) {
                    console.log("Error encountered in getAllPageContentByCategory");
                    return;
                } else {
                    return response.data.message;
                }
            });
}

/* Returns All Page Sections by Page ID */
async function getPageSections(pageId) {
    return http.get('/content/page/sections', {params: pageId})
            .then(response => {
                if (response.data.status !== 200) {
                    console.log("Error encountered in getAllPageContent");
                    return;
                } else {
                    return response.data.message;
                }
            });
}



export {
    getAllPageContent,
    getPageContent,
    postPageViewCount,
    getPageContentByCategory,
    getPageSections
}