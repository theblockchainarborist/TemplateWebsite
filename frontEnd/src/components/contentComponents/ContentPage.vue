<template>
    <div class="content-page">
        <!-- We get all content for the current route -->
        <div v-for="content in getContent" 
                v-bind:key="content.id"
            >
            <p class="content-title">
                {{content.title}}
            </p>

            <!-- We get all page sections for the content -->
            <div v-for="section in getPageSections(content)"
                    v-bind:key="section.id"
                    class="page-section"
                >
                <p v-if="section.text"
                        class="section-text"
                        :style="section.decoration"
                    >
                    {{section.text}}
                </p>
                <img v-if="section.image"
                        :src="getSectionImage(section)" :alt="section.id"
                        class="section-image"
                    >

            </div>
            <div class="link-btn-div" v-if="content.affiliateLink != ''">
                <div class="link-btn" 
                    v-on:click="openExternalPage(content.affiliateLink)"
                >
                    <p>
                        {{content.linkText}}
                    </p>
                    <img src="../../assets/externalLinkIcon.png"
                        alt="" class="link-icon"
                    >
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import MainContent from '../../data/MainContent';
import KnowlegeCenterData from '../../data/KnowlegeCenterData';


export default {
    name: "content-page",
    props: ['page'],
    computed: {
        getContent() {

            switch (this.page.name) {
                case ('main-view'): {
                    let result = [];
                    for (let i = 0; i < MainContent.allContent.length; i++) {
                        let thisContent = MainContent.allContent[i];
                        
                        if ("/" + thisContent.route !== this.page.path) {
                            continue;
                        }  else {
                            result.push(thisContent);
                        }
                    }
                    return result;
                }
                case ('knowlege-center-view'): {
                    let result = [];
                    for (let i = 0; i < KnowlegeCenterData.data.length; i++) {
                        let thisContent = KnowlegeCenterData.data[i];
                        
                        if ("/" + thisContent.route !== this.page.path) {
                            continue;
                        }  else {
                            result.push(thisContent);
                        }
                    }
                    return result;
                }
                default: {
                    return "";
                }
            }
        }
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
        openExternalPage(link) {
            if (link !== "") {
                window.open(link, '_blank');
            }
        }
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
</style>