<template>
    <div class="main-view-grid">

        <main-body-left />

        <main-body-center 
                class="main-body-center"
                :page="this.page" 
            />

        <main-body-right />
    </div>
</template>

<script>
import MainBodyCenter from '../components/mainBody/MainBodyCenter.vue';
import MainBodyLeft from '../components/mainBody/MainBodyLeft.vue';
import MainBodyRight from '../components/mainBody/MainBodyRight.vue';


export default {
  components: { MainBodyCenter, MainBodyLeft, MainBodyRight },
    name: "home-view",
    props: ['page'],
    computed: {
    },
    methods: {
    }
}
</script>

<style>

.main {
    background-color: rgb(242, 242, 242);
}

.section-text {
    font-size: 18px;
}

.section-image {
    width: 100%;
    height: auto;
    border: ridge 1px black;
}




/* New CSS */
.main-view-grid {
    display: grid;
    grid-template-columns: 1fr;
    grid-template-areas: 
    'center';
    padding: 2% 5%;
}

.main-body-center {
    grid-area: center;
}
</style>