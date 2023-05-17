<script setup>
import { RouterView } from 'vue-router'
import MenuComponent from './components/menu/MenuComponent.vue';
import MobileMenuBtn from './components/menu/mobileMenu/MobileMenuBtn.vue';
import Logo from '/logo.jpg';
import MobileMenuBtnVue from './components/menu/mobileMenu/MobileMenuBtn.vue';

const LogoImage = Logo;
import { ref, onMounted, onBeforeUnmount } from 'vue';

const isSmallScreen = ref(window.innerWidth < 500);

onMounted(() => {
  window.addEventListener('resize', handleResize);
});

onBeforeUnmount(() => {
  window.removeEventListener('resize', handleResize);
});

function handleResize() {
  isSmallScreen.value = window.innerWidth < 800;
}

</script>

<template>
  <div id="app-div">
    <header class="header">
      <nav id="menu-nav">
        <div id="title-image-div">
            <img :src="LogoImage" 
            class="header-image"
            >
        </div>
        <div class="menu-component-div">
          <div>
            <menu-component v-if="!isSmallScreen" />
          </div>
          <div v-if="isSmallScreen">
            <mobile-menu-btn />
          </div>
        </div>
      </nav>
    </header>
    <main class="mainView">
      <RouterView />
    </main>
    <footer id="footer">
    </footer>
  </div>
</template>



<style>

#app-div {
  width: 100%;
  height: 100%;
}

#menu-nav {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  width: 100%;
  height: fit-content;
  margin: 0px;
  padding: 0px;
}

#title-image-div {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  height: auto;
  margin: 0px;
  padding: 0px;
  background-color: rgb(22, 20, 23);
}

.menu-component-div {
  display: inline-block;
  position: relative;
  background-color: rgb(22, 20, 23);
  height: fit-content;
}

#footer {
  grid-area: footer;
  height: auto;
  min-height: 5vh;
}

.header-image {
  width: 50vw;
}

@media only screen and  (max-width:900px) { 

  .header-image {
    width: 70vw;
  }
}

@media only screen and  (max-width:450px) { 

  .header-image {
    width: 90vw;
  }
}


</style>
