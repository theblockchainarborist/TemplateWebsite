<template>
  <div @click="handleClick" v-click-away="away" class="relative">
    <slot name="toggler">
        <div class="menu-btn-div">
            <p class="menu-btn-p">
                {{menuItem.name}}
            </p>
        </div>
    </slot>
    <slot/>
  </div>
</template>

<script>
import { mixin as VueClickAway } from "vue3-click-away";
import router from '../../router/index';

export default {
  name: "MenuDropdown",
  mixins: [VueClickAway],
  props: ['menuItem', 'hasSubMenu'],
  provide() {
    return {
      sharedState: this.sharedState
    };
  },
  data() {
    return {
      sharedState: {
        active: false
      }
    };
  },
  methods: {
    handleClick() {
        if (this.hasSubMenu) {
            this.sharedState.active = !this.sharedState.active;
        } else if (this.menuItem.name === "Home") {
            router.push({ name: "home-view" });
        } else if (this.menuItem.name === "About") {
          router.push({ name: "main-view", params: {route: "about"}})
        }
    },
    away() {
      this.sharedState.active = false;
    }
  }
};
</script>

<style>

</style>
