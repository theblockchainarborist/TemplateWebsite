<template>
<div class="outer-image-div">
    <div class="image-slider image-main-div">
            <img id="image-slider-image" :src="this.image" alt=""
                    class="slider-image animation"
                >
        </div>
    </div>

</template>

<script>
import SliderImages from '../../data/SliderImages';

export default {
    name: 'content-image-slider',
    data() {
        return {
            imageArray: [],
            image: '',
            counter: 0
        }
    },
    methods: {
        switchImage() {
            if (this.counter < this.imageArray.length) {
                this.image = this.imageArray[this.counter];
                this.counter++;
                setTimeout(() => {
                    this.switchImage();
                }, 10000);
            } else {
                this.counter = 0;
                this.switchImage();
            }
        }
    },
    created() {
        for (let i = 0; i < SliderImages.sliderImages.length; i++) {
            let thisContent = SliderImages.sliderImages[i];
            if (thisContent) {
                this.imageArray.push(thisContent);
            }
        }
        this.switchImage();
    }
}
</script>

<style>
.image-slider {
    display: flex;
    justify-content: center;
    width: 100%;
}

.slider-image {
    border: ridge 1px black;
    object-fit: fill;
    width: auto;
    height: 500px;
    
}
.animation {
    animation: fade 10s linear;
    animation-iteration-count: infinite;
}


@keyframes fade {
    0% {
        opacity: 0;
    }
    2% {
        opacity: 0;
    }
    10% {
        opacity: 0.2;
    }
    15% {
        opacity: 0.4;
    }
    20% {
        opacity: 0.6;
    }
    25% {
        opacity: 0.8;
    }
    30% {
        opacity: 1;
    }
    70% {
        opacity: 1;
    }
    75% {
        opacity: 0.8
    }
    80% {
        opacity: 0.6;
    }
    85% {
        opacity: 0.4;
    }
    90% {
        opacity: 0.2;
    }
    98% {
        opacity: 0;
    }
    100% {
        opacity: 0;
    }
}

.image-main-div {
    overflow: hidden;
    position: relative;
}


/* Mobile CSS */
@media only screen and (max-width:1500px) {
        .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 500px;
        max-width: 475px;
    }
}
@media only screen and (max-width:1281px) {
        .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 500px;
        max-width: 450px;
    }
}
@media only screen and  (max-width:1025px) { 
    /* big landscape tablets, laptops, and desktops */ 
    .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 450px;
        max-width: 400px;
    }
}
@media only screen and  (max-width:801px)  { 
    /* tablet, landscape iPad, lo-res laptops ands desktops */ 
    .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 350px;
        max-width: 300px;
    }
}
@media only screen and  (max-width:600px)  { 
    /* portrait tablets, portrait iPad, e-readers (Nook/Kindle), landscape 800x480 phones (Android) */ 
    .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 300px;
        max-width: 250px;
    }
}
@media only screen and  (max-width:480px)  { 
    /* smartphones, Android phones, landscape iPhone */ 
    .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 275px;
        max-width: 225px;
    }
}
@media only screen and (max-width:320px)  { 
    /* smartphones, portrait iPhone, portrait 480x320 phones (Android) */ 
    .slider-image {
        border: ridge 1px black;
        object-fit: fill;
        width: auto;
        height: 200px;
        max-height: 150px;
    }
}


</style>