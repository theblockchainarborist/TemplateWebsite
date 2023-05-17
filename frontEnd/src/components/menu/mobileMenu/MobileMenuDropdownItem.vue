<template>
    <div v-if="active">
        <router-link class="mobile-menu-item-link"
                :to="getRouterLink"
                v-on:click="closeMenu()"
            >
            {{subMenuItem}}
        </router-link>
    </div>

</template>

<script>

export default {
    name: "mobile-menu-dropdown-item",
    props: ['subMenuItem', 'subMenuRoute'],
    inject: ["sharedState"],
    computed: {
        getRouterLink() {
            let url = this.subMenuItem.replace(/\s+/g, '-').toLowerCase();
            let route = this.subMenuRoute;

            if (route !== "") {
              return  "/" + route + "/" + url.replaceAll("'", "");
            }
            return  "/" + route;
        },
        active() {
            if (this.sharedState.active) {
                return true;
            } else {
                return false;
            }
        }
    },
    methods: {
        closeMenu() {
            this.$emit('close-menu', true);
        }
    }
};
</script>

<style>
.mobile-menu-item-link {
    color: white;
    font-size: 20px;
    margin-left: 5px;
}
.mobile-menu-item-link:hover {
    text-decoration: underline;
    background-color: black;
}
</style>