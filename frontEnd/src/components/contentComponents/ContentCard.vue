<template>
    <div class="content-card">
        <!-- We get all content for the current route -->
        <div v-for="content in getContent" 
                v-bind:key="content.id"
                class=""
            >

            <div class="card">
                <img v-if="content.pageSections[0].image"
                        :src="content.pageSections[0].image" :alt="content.id"
                        class="card-image"
                        v-on:click="handleClick(content)"
                >
                <div class="card-content">
                    <p class="card-title">{{content.title}}</p>
                    <p class="card-text">{{getSectionStart(content)}}</p>

                    <div class="card-read-more-btn-div">
                        <input  
                            class="card-read-more-btn"
                            type="button" 
                            value="READ MORE"
                            v-on:click="handleClick(content)"
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import MainContent from '../../data/MainContent';
import router from '../../router/index';

export default {
    name: "content-card",
    props: ['page'],
    computed: {
        getContent() {
            let result = [];
            for (let i = 0; i < MainContent.allContent.length; i++) {
                let thisContent = MainContent.allContent[i];
                if (this.page.path == '/' && thisContent.route !== 'about') {
                    result.push(thisContent);
                }
                if (thisContent.route !== this.page.params.route) {
                    continue;
                } else {
                    result.push(thisContent);
                }
            }
            return result;
        },
        
    },
    methods: {
        getPageSections(content) {
            let result = [];
            let sections = content.pageSections;
            for (let i = 0; i < sections.length; i++) {
                let thisSection = sections[i];
                result.push(thisSection);
            }
            return result;
        },
        getSectionImage(section) {
            let imagePath = section.image;
            imagePath.replaceAll('//', '/');
            return imagePath;
        },
        getSectionStart(content) {
            console.log(content)
            let responseString = "";
            for (let i = 0; i < content.pageSections.length; i++) {
                let thisSection = content.pageSections[i];
                if (thisSection.text !== "") {
                    responseString = thisSection.text.match(/[^\.!\?]+[\.!\?]+/g);
                }
            }
            return responseString[0];
        },
        handleClick(content) {
            router.push({ name: "main-view", params: { route: content.route } });
        }
    }
}
</script>

<style>

.card {
    display: flex;
    flex-direction: row;
    border: inset 2px black;
    margin: 2% auto;
    padding: 1% 1%;
    width: 80%;
    height: fit-content;
    max-width: 80%;
    box-shadow: 2px 2px 5px black;
}

.card-title {
    font-size: 1.5vw;
    font-weight: 700;
    text-align: center;
}

.card-image {
    width: 200px;
    height: auto;
    margin: 1%;
    border: ridge 1px black;
    cursor: pointer;
}

.card-read-more-btn-div {
    display: flex;
    justify-content: right;
    align-self: begin;
    align-items: center;
    width: 100%;
    height: 100%;
    max-width: 80%;
}

.card-read-more-btn {
    cursor: pointer;
    max-height: 50px;
}

.card-content {
    display: flex;
    flex-direction: column;
    width: 100%;
}

.card-text {
    font-size: 18px;
    margin: 1% 10%;
}
.content-card {
    color: black;
}


/* Mobile CSS */
@media only screen and  (max-width:1025px) { 
    /* big landscape tablets, laptops, and desktops */ 
    .card {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;

        border: inset 2px black;
        margin: 2% auto;
        padding: 1% 1%;

        max-width: 80%;
        box-shadow: 2px 2px 5px black;
    }
    .card-read-more-btn-div {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
        margin: 0% auto;
    }
    .card-text {
        font-size: 16px;
        margin: 1% 10%;
    }
    .card-title {
        font-size: 20px;
        font-weight: 700;
        text-align: center;
    }
    .card-read-more-btn {
        cursor: pointer;
        max-height: 50px;
        margin: 5% auto;
    }
}
</style>