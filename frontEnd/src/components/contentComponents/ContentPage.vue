<template>
    <div class="content-page">
        <!-- We get all content for the current route -->
        <div>
            <p class="content-title">
                {{pageContent.title}}
            </p>
            <!-- We get all page sections for the content -->
            <div v-for="section in getAllSections"
                    v-bind:key="section.id"
                    class="page-section"
                >

                <p v-if="section.text"
                        class="section-text"
                        :style="section.decoration"
                    >
                    {{section.text}}
                </p>
                <img v-if="section.image_path"
                        :src="getSectionImage(section)" :alt="section.id"
                        class="section-image"
                    >
            </div>
            <div class="link-btn-div" v-if="pageContent.affiliate_link != null && pageContent.affiliate_link != 'none'">
                <div class="link-btn" 
                    v-on:click="openExternalPage(pageContent.affiliate_link)"
                >
                    <p>
                        {{pageContent.link_text}}
                    </p>
                    <img src="../../assets/externalLinkIcon.png"
                        alt="" class="link-icon"
                    >
                </div>
            </div>
            <div v-if="pageContent.affiliate_link != null && pageContent.affiliate_link != 'none'">
                <p class="disclaimer">
                    {{disclaimer}}
                </p>
            </div>
        </div>
    </div>
</template>

<script>
import Disclaimer from '../../data/Disclaimer.json';
import {getPageSections} from '../../services/ContentService';


export default {
    name: "content-page",
    props: ['page', 'pageContent'],
    data() {
        return {
            disclaimer: Disclaimer.disclaimer,
            sections: undefined
        }
    },
    computed: {
        getAllSections() {
            return this.sections;
        }
    },
    methods: {
        getSectionImage(section) {
            let imagePath = '/pageImages/' + section.image_path;
            return imagePath;
        },
        openExternalPage(link) {
            if (link !== "") {
                window.open(link, '_blank');
            }
        }
    },
    created() {
        let message = {
                id: this.pageContent.id
            }

            getPageSections(message)
                .then(response => {
                    this.sections = response;
            });
    }
}
</script>

<style>
.content-title {
    text-align: center;
    font-size: 35px;
    font-weight: 600;
}

.page-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 2% 20%;
}

.section-text {
    font-size: 18px;
}

.section-image {
    width: 100%;
    height: auto;
    border: ridge 1px black;
}

.content-page {
    color: black;
}

.link-btn-div {
    display: flex;
    justify-content: center;
}
.link-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 25px;
    border-radius: 15px;
    background-color: rgb(241, 69, 7);
    color: white;
    padding: 5px 15px;
    cursor: pointer;
    user-select: none;
}

.link-icon {
    width: 30px;
    height: 30px;
    margin-left: 10px;
}

.center-text {
    text-align: center;
}

.disclaimer {
    margin: 0% 10%;
    font-size: 14px;
    font-style: italic;
    margin-top: 5%;
}

@media only screen and  (max-width:900px) { 

    .content-title {
        font-size: 25px;
    }
}
</style>