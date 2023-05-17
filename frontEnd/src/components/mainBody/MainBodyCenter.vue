<template>
    <div class="main">

        <!-- Display Results By Category -->
        <div v-if="this.category">
            <div>
                <category-display 
                        :category="category"
                        :pageContent="this.pageContent"
                    />
            </div>
        </div>

        <!-- Display Image Slider -->
        <div v-if="!this.category">
            <div class="slider-div" v-if="this.page.path == '/'">
                <image-swiper />
            </div>
        </div>
        
        <!-- Display Page Content -->
        <div v-if="!this.category">
            <div v-for="content in getPages" 
                    v-bind:key="content.id"
                >
                <!-- Display a page -->
                <div v-if="page.path == '/' + content.route">
                    <content-page :page="page" 
                        :pageContent="content"
                    />
                </div>
            </div>
        </div>

        <!-- Display Content Cards on Home Page -->
        <div v-if="!this.category">
            <div v-if="this.page.path == '/'">
                <div v-for="content in getPages" v-bind:key="content.id">
                    <content-card :page="page" 
                                :pageContent="content"        
                        />
                </div>
            </div>
        </div>

        <!-- Knowledge Center -->
        <div v-if="!this.category">
            <div v-if="this.page.path.includes('knowledge-center')">
                <knowledge-center 
                        :page="this.page"
                    />
            </div>
        </div>

    </div>
</template>

<script>
import CategoryDisplay from '../contentComponents/CategoryDisplay.vue';
import ContentCard from '../contentComponents/ContentCard.vue';
import ContentPage from '../contentComponents/ContentPage.vue';
import {getAllPageContent, getPageSections} from '../../services/ContentService';
import ImageSwiper from '../contentComponents/ImageSwiper.vue';
import KnowledgeCenter from '../knowledgeCenter/KnowledgeCenter.vue';


export default {
    components: { 
        ContentPage, 
        ContentCard, 
        CategoryDisplay,
        ImageSwiper,
        KnowledgeCenter 
    },
        name: "main-body-center",
        props: ['page', 'category'],
        data() {
            return {
                allPageContent: undefined
            }
        },
        methods: {
            runTest() {
                console.log("RUNNING TEST")
                let content = {
                    pageNumber: 2
                }
                getPageSections(content)
                    .then(response => {
                        console.log(response);
                    });
            },
            getContentCategory(content) {
                if (content.category !== null) {
                    let c = content.category;
                    return c.replaceAll(' ', '');
                }
                
            }
        },
        computed: {
            getPages() {
                return this.allPageContent;
            },
        },
        created() {
            getAllPageContent()
                .then(response => {
                    console.log(response);
                    this.allPageContent = response;
                });
        }
}
</script>

<style>
.main {
    border: solid black 1px;
    padding: 2% 0%;
    margin: 1% 5%;
}
.slider-div {
    margin: 5%;
}
</style>