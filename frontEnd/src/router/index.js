import { createRouter, createWebHistory } from 'vue-router'
import MainView from '../views/MainView.vue';
import HomeView from '../views/HomeView.vue';
import CategoryView from '../views/CategoryView.vue';
import KnowlegeCenterView from '../views/KnowlegeCenterView.vue';


const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home-view',
      component: HomeView,
      props: route => ({page: route})
    },
    {
      path: '/:route',
      name: 'main-view',
      component: MainView,
      props: route => ({page: route})
    },
    {
      path: '/category/:category',
      name: 'category-view',
      component: CategoryView,
      props: category => ({category: category})
    },
    {
      path: '/knowledge-center/:route',
      name: 'knowlege-center-view',
      component: KnowlegeCenterView,
      props: route => ({page: route})
    }
  ]
})

export default router
