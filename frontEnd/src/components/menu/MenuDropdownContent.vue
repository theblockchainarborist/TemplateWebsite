<template>
    <transition name="">
        <div
            v-if="active"
            class="dropdown-content origin-top-right absolute right-0 mt-2 w-48 bg-white rounded-lg border py-2"
            >
        <slot/>
        </div>
    </transition>
    </template>

<script>


export default {
    name: "MenuDropdownContent",
    inject: ["sharedState"],
    computed: {
        active() {
        return this.sharedState.active;
        }
    }
};
</script>

<style>

</style>
