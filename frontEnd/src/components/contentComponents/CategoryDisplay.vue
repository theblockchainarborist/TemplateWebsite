<template>
    <div>
        <h1 class="category-header">
            {{this.getCategoryName}}
        </h1>

        <div v-if="isLoading" class="center-loader">
            <loader-component />
        </div>


        <div v-for="entry in this.displayData"  
                v-bind:key="entry.id"
            >
            <content-card 
                    :pageContent="entry" 
                    :page="{'params': {'route': entry.route}}" 
            />
        </div>
    </div>
</template>

<script>
import ContentCard from './ContentCard.vue';
import { getPageContentByCategory } from '../../services/ContentService';
import LoaderComponent from '../loaderComponents/LoaderComponent.vue';

export default {
    components: { ContentCard, LoaderComponent },
    name: 'category-display',
    props: ['category', 'pageContent'],
    data() {
        return {
            displayData: [],
            priorCategory: undefined,
            loading: false
        }
    },
    computed: {
        getCategoryName() {
            let name = this.category.params.category;
            let nameArray = name.split("-");
            for (let i = 0; i < nameArray.length; i++) {
                nameArray[i] = nameArray[i][0].toUpperCase() + nameArray[i].substr(1);
            }
            return nameArray.join(" ");
        },
        isLoading() {
            return this.loading
        }
    },
    methods: {
        getData() {
            let catParams = this.category.params;

            if (this.priorCategory !== catParams.category || this.priorCategory == undefined) {
                this.priorCategory = catParams.category

                let message = {
                    category: catParams.category
                    }

            getPageContentByCategory(message)
                .then(response => {
                    this.displayData = response;
                });
            }
        }
    },
    created() {
        this.loading = true;
        this.getData();
        this.loading = false
    },
    updated() {
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

.center-loader {
    display: flex;
    height: 100px;
    justify-content: center;
    align-items: center;
}

@media only screen and  (max-width:900px) { 

    .category-header {
        font-size: 30px;
        margin-top: 10px;
        margin-bottom: 20px;
    }
}

@media only screen and  (max-width:450px) { 

    .category-header {
        font-size: 20px;
    }
}
</style>