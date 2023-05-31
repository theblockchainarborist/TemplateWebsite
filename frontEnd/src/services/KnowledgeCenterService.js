import axios from 'axios';

const http = axios.create({
    baseURL: "https://server.thermalreviewer.com",
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
    }
});


/* Returns Requested Page by Page ID */
async function getKnowledgeCenterPage(pageRoute) {
    return http.get('/knowledge-center', {params: pageRoute})
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
    getKnowledgeCenterPage
}