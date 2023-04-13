<template>
    <div class="main">

        <!-- Display Results By Category -->
        <div v-if="this.category">
            <category-display :category="category"/>
        </div>

        <!-- Display Image Slider -->
        <div v-if="!this.category">
            <div class="slider-div" v-if="this.page.path == '/'">
                <content-image-slider />
            </div>
        </div>
        
        <!-- Display Page Content -->
        <div v-if="!this.category">
            <content-page :page="page" />
        </div>

        <!-- Display Content Cards -->
        <div v-if="!this.category">
            <div v-if="this.page.path == '/'">
                <content-card :page="page" />
            </div>
        </div>

    </div>
</template>

<script>
import CategoryDisplay from '../contentComponents/CategoryDisplay.vue';
import ContentCard from '../contentComponents/ContentCard.vue';
import ContentImageSlider from '../contentComponents/ContentImageSlider.vue';
import ContentPage from '../contentComponents/ContentPage.vue';

export default {
    components: { 
        ContentPage, 
        ContentCard, 
        ContentImageSlider, 
        CategoryDisplay 
    },
        name: "main-body-center",
        props: ['page', 'category'],
        
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