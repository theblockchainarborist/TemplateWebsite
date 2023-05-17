<template>
 <transition name="mobileMenu">
  <div @click="handleClick" v-click-away="away" class="">
    <slot name="toggler">
        <div class="menu-btn-div">
            <p class="menu-btn-p" >
                {{menuItem.name}}
            </p>
        </div>
    </slot>
    <slot/>
  </div>
 </transition>
</template>

<script>
import { mixin as VueClickAway } from "vue3-click-away";
import router from '../../../router/index';

export default {
  name: "mobile-menu-dropdown",
  mixins: [VueClickAway],
  props: ['menuItem', 'hasSubMenu', 'closeMenu'],
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
      console.log(this.menuItem)
        if (this.hasSubMenu) {
            this.sharedState.active = !this.sharedState.active;
        } else if (this.menuItem.name === "Home") {
            this.$emit('close-menu', true);
            router.push({ name: "home-view" });
        } else if (this.menuItem.name === "About") {
            this.$emit('close-menu', true);
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
.mobile-menu {
    display: flex;
    flex-direction: column;
    width: fit-content;
    position: fixed;
    z-index: 999;
    background-color: black;
    border-bottom-right-radius: 10px;
}

.mobileMenu-enter-active,
.mobileMenu-leave-active {
  transition: height 0s ease; /* Adjust the duration and easing as needed */
}

.mobileMenu-enter,
.mobileMenu-leave-to {
  height: 0;
  overflow: hidden;
}
</style>
