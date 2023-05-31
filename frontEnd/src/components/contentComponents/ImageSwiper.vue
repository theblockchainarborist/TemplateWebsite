<template>
<div class="img-slider-div" v-if="this.slides.length > 0">
    <vueper-slides 
        3d
        :touchable="false" 
        :slide-ratio="4 / 4"  
        :bullets="false"
        transition-speed="3050" 
        autoplay 
        :arrows="false" 
        :infinite="true"
        >
    <vueper-slide  
        v-for="(slide, i) in slides"
        :key="i"
        :image="slide.image"
        :duration="10000"
        />
</vueper-slides>
</div>

</template>

<script>
import { VueperSlides, VueperSlide } from 'vueperslides'
import 'vueperslides/dist/vueperslides.css'





const ImageFolder = import.meta.glob('@/assets/images/*');

async function loadImages(slides) {
    let slideArray = [];
    const images = await ImageFolder;
    for (const path in images) {
        slides.push({
            image: path
        });
    }
return slideArray;
}

export default {
    name: 'image-swiper',
    components: {
        VueperSlides,
        VueperSlide
    },
    data() {
        return {
            slides: []
        }
    },
    created() {
        loadImages(this.slides);
    }
}
</script>

<style>
.img-slider-div {
    margin: 0% 25%;
}
</style>