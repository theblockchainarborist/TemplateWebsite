<template>
    <div class="main-view-grid">

        <main-body-left />

        <main-body-center 
                class="main-body-center"
                :page="page" 
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
    name: "knowlege-center-view",
    props: ['page'],
    computed: {
    },
    methods: {
    }
}
</script>

<style>

</style>