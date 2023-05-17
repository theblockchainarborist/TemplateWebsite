import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:3000",
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
    }
});

/* Returns the Menu Buttons */
async function getMenuItems() {
    return http.get('/menu')
            .then(response => {

                if (response.data.status !== 200) {
                    console.log("Error in getMenuItems");
                    return;
                } else {
                    return response.data.message;
                }
            });
}

/* Returns the SubMenus for each menu Button */
async function getSubMenuItems(buttonId) {
    return http.get('/menu/submenu', {params: buttonId})
            .then(response => {

                if (response.data.status !== 200) {
                    console.log("Error in getSubMenuItems");
                    return;
                } else {
                    return response.data.message;
                }
            });
}


export {
    getMenuItems,
    getSubMenuItems
}