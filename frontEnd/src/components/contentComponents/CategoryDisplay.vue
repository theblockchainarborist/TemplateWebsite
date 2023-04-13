<template>
    <div>
        <h1 class="category-header">
            {{this.getCategoryName}} Category
        </h1>
        <div v-for="entry in this.displayData" v-bind:key="entry.id">
            <content-card :key="entry.route" :page="{'params': {'route': entry.route}}" />
        </div>
    </div>
</template>

<script>
import MainContent from '../../data/MainContent';
import ContentCard from './ContentCard.vue';

export default {
  components: { ContentCard },
    name: 'category-display',
    props: ['category'],
    data() {
        return {
            displayData: []
        }
    },
    computed: {
        getCategoryName() {
            let name = this.category.params.category;
            return name.charAt(0).toUpperCase() + name.slice(1);
        }
    },
    methods: {
        getData() {
            this.displayData = [];
            for (let i = 0; i < MainContent.allContent.length; i++) {
                let thisContent = MainContent.allContent[i];
                if ("/category/" + thisContent.category !== this.category.path) {
                    continue;
                } else {
                    this.displayData.push(thisContent);
                }
            }
        }
    },
    created() {
        this.getData();
    },
    beforeUpdate() {
        this.getData();
    }
}
</script>

<style>
.category-header {
    text-align: center;
    font-weight: 700;
    font-size: 40px;
    color: black;
}
</style>