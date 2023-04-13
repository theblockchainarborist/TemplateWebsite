<script setup>
import { RouterView } from 'vue-router'
import MenuComponent from './components/menu/MenuComponent.vue';
import MenuData from './data/MenuData';

const HeaderImagePath = MenuData.headerImage;
</script>

<template>
  <div id="app-div">
    <header class="header">
      <nav id="menu-nav">
        <div id="title-image-div">
            <img :src="HeaderImagePath" 
            class="header-image"
            >
        </div>
        <div class="menu-component-div">
          <menu-component />
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
}

.menu-component-div {
  display: inline-block;
  position: relative;
  background-color: rgb(0, 0, 0);
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
</style>
