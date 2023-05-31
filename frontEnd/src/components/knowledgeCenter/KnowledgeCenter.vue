<template>
    <div>
        <p class="content-title">
            {{this.title}}
        </p>

        <div v-for="section in sections" v-bind:key="section.id" class="page-section">
            <p class="section-text">
                {{section.text}}
            </p>
        
        </div>
    </div>
</template>

<script>
import {getKnowledgeCenterPage} from '../../services/KnowledgeCenterService';

export default {
    name: 'knowledge-center',
    props: ['page'],
    data() {
        return {
            title: '',
            sections: []
        }
    },
    computed: {
    },
    methods: {
        getData() {

            let message = {
                pageRoute: this.page.params.route
            }

            getKnowledgeCenterPage(message)
            .then(response => {
                let data = response[0];
                this.title = data.title;

                // Loop through all sections.
                for (let i = 0; i < data.sections.length; i++) {
                    let thisSection = data.sections[i];
                    this.sections.push(thisSection);
                }
            })
        }
    },
    created() {
        this.getData();
    },
    watch: {
        page(newPage, oldPage) {
            if (newPage !== oldPage) {
                this.title = '';
                this.sections = [];
                this.getData();
            }
        }
    }
}
</script>

<style>

</style>