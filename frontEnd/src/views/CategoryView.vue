<template>
    <div class="main-view-grid">

        <main-body-left />

        <main-body-center 
                class="main-body-center"
                :category="this.category" 
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
    name: "category-view",
    props: ['category'],
    computed: {
    },
    methods: {
    }
}
</script>

<style>

</style>