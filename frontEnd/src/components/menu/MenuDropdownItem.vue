<template>
  <router-link class="menu-item-link"
      :to="getRouterLink"
    >
      {{subMenuItem}}
  </router-link>
</template>

<script>

export default {
    name: "MenuDropdownItem",
    props: ['subMenuItem', 'subMenuRoute'],
    computed: {
        getRouterLink() {
            let url = this.subMenuItem.replace(/\s+/g, '-').toLowerCase();
            let route = this.subMenuRoute;

            console.log(route)

            if (route !== "") {
              return  "/" + route + "/" + url.replaceAll("'", "");
            }
            return  "/" + route;
        }
    },
    methods: {
    }
};
</script>

<style>

</style>