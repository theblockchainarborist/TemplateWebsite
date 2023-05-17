<template>
    <transition name="">
        <div
            v-if="active"
            class="mobile-dropdown-content origin-top-right absolute right-0 mt-2 w-48 bg-white rounded-lg border py-2"
            >
        <slot/>
        </div>
    </transition>
    </template>

<script>


export default {
    name: "mobile-menu-dropdown-content",
    inject: ["sharedState"],
    computed: {
        active() {
        return this.sharedState.active;
        }
    }
};
</script>

<style>
.mobile-dropdown-content {
    border-left: solid 4px white;
    border-radius: 13px;
    margin: 0px 10px;
}
</style>
