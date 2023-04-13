<template>
    <div class="main-view-grid">

        <main-body-left class="main-body-left" />

        <main-body-center 
                class="main-body-center"
                :page="this.page" 
            />

        <main-body-right class="main-body-right" />
    </div>
</template>

<script>
import MainBodyCenter from '../components/mainBody/MainBodyCenter.vue';
import MainBodyLeft from '../components/mainBody/MainBodyLeft.vue';
import MainBodyRight from '../components/mainBody/MainBodyRight.vue';


export default {
  components: { MainBodyCenter, MainBodyLeft, MainBodyRight },
    name: "main-view",
    props: ['page'],
    computed: {
    },
    methods: {
    }
}
</script>

<style>

.main-view-grid {
    display: grid;
    grid-template-columns: 1fr 3fr 1fr;
    grid-template-areas: 
    'left center right';
}
.main-body-center {
    grid-area: center;
}
.main-body-right {
    grid-area: right;
}
.main-body-left {
    grid-area: left;
}


/* Mobile CSS */
@media only screen and (max-width:1025px) { 
    /* big landscape tablets, laptops, and desktops */ 
    .main-view-grid {
        display: grid;
        grid-template-columns: 1fr 3fr 1fr;
        grid-template-areas: 
        'left center right';
    }
    .main-body-center {
    grid-area: center;
    }
    .main-body-right {
        grid-area: right;
    }
    .main-body-left {
        grid-area: left;
    }
}
@media only screen and (max-width:801px)  { 
    /* tablet, landscape iPad, lo-res laptops ands desktops */ 
    .main-view-grid {
        display: grid;
        grid-template-columns: 1fr;
        grid-template-areas: 
        'center';
    }
}
@media only screen and (max-width:600px)  { 
    /* portrait tablets, portrait iPad, e-readers (Nook/Kindle), landscape 800x480 phones (Android) */ 
    .main-view-grid {
        display: grid;
        grid-template-columns: 1fr;
        grid-template-areas: 
        'center';
    }
}
@media only screen and (max-width:480px)  { 
    /* smartphones, Android phones, landscape iPhone */ 
    .main-view-grid {
        display: grid;
        grid-template-columns: 1fr;
        grid-template-areas: 
        'center';
    }
}
@media only screen and (max-width:320px)  { 
    /* smartphones, portrait iPhone, portrait 480x320 phones (Android) */ 
    .main-view-grid {
        display: grid;
        grid-template-columns: 1fr;
        grid-template-areas: 
        'center';
    }
}




</style>