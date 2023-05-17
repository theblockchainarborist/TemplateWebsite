<template>
    <div class="content-card">
        <!-- We get all content for the current route -->
        
        <div v-if="pageContent.route !== 'about'"
            >
            <div class="card">
                    <img v-if="doesHaveImage"
                        :src="getSectionImage()" alt=""
                        class="card-image"
                        v-on:click="handleClick(content)"
                    >

                <div class="card-content">
                    <p class="card-title">{{pageContent.title}}</p>
                    <div v-if="sectionData[1]">
                        <p class="card-text">{{getSectionStart()}}</p>
                    </div>
                    
                    <div class="card-read-more-btn-div">
                        <input  
                            class="card-read-more-btn"
                            type="button" 
                            value="READ MORE"
                            v-on:click="handleClick()"
                        >
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import router from '../../router/index';
import {getPageSections} from '../../services/ContentService';

export default {
    name: "content-card",
    props: ['page', 'pageContent'],
    data() {
        return {
            sections: undefined,
            sectionData: []
        }
    },
    computed: {
        doesHaveImage() {
            let response = false;
            for (let i = 0; i < this.sectionData.length; i++) {
                let sectionD = this.sectionData[i];
                if (sectionD.image_path !== null && sectionD.image_path !== 'none') {
                    response = true;
                }
            }
            return response;
        }
    },
    methods: {
        getSectionImage() {

            for (let i = 0; i < this.sectionData.length; i++) {
                let sectionD = this.sectionData[i];
                if (sectionD.image_path !== null) {
                    return '/pageImages/' + sectionD.image_path;
                }
            }
        },
        getSectionStart() {
            for (let i = 0; i < this.sectionData.length; i++) {
                let sectionD = this.sectionData[i];
                if (sectionD.text !== null) {
                    return sectionD.text.split(/[\.\?!]\s/)[0];
                }
            }
        },
        handleClick() {
            router.push({ name: "main-view", params: { route: this.pageContent.route } });
        }
    },
    created() {
        let message = {
            id: this.pageContent.id
        }
        getPageSections(message)
            .then(response => {
                this.sectionData = response;
            });
    }
}
</script>

<style>

.card {
    display: flex;
    flex-direction: row;
    border: inset 2px black;
    margin: 2% auto;
    padding: 1% 1%;
    width: 80%;
    height: fit-content;
    max-width: 80%;
    box-shadow: 2px 2px 5px black;
}

.card-title {
    font-size: 1.5vw;
    font-weight: 700;
    text-align: center;
}

.card-image {
    width: 200px;
    height: auto;
    margin: 1%;
    border: ridge 1px black;
    cursor: pointer;
}

.card-read-more-btn-div {
    display: flex;
    justify-content: right;
    align-self: begin;
    align-items: center;
    width: 100%;
    height: 100%;
    max-width: 80%;
}

.card-read-more-btn {
    cursor: pointer;
    max-height: 50px;
}

.card-content {
    display: flex;
    flex-direction: column;
    width: 100%;
}

.card-text {
    font-size: 18px;
    margin: 1% 10%;
}
.content-card {
    color: black;
}


/* Mobile CSS */
@media only screen and  (max-width:1025px) { 
    /* big landscape tablets, laptops, and desktops */ 
    .card {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;

        border: inset 2px black;
        margin: 2% auto;
        padding: 1% 1%;

        max-width: 80%;
        box-shadow: 2px 2px 5px black;
    }
    .card-read-more-btn-div {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
        margin: 0% auto;
    }
    .card-text {
        font-size: 16px;
        margin: 1% 10%;
    }
    .card-title {
        font-size: 20px;
        font-weight: 700;
        text-align: center;
    }
    .card-read-more-btn {
        cursor: pointer;
        max-height: 50px;
        margin: 5% auto;
    }
}

/*Image mobile css*/

@media only screen and  (max-width:375px) { 
    .card-image {
        width: 150px;
    }
}
@media only screen and  (max-width:275px) { 
    .card-image {
        width: 120px;
    }
}
@media only screen and  (max-width:200px) { 
    .card-image {
        width: 100px;
    }
}
</style>