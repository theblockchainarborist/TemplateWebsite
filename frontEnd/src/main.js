import { createApp } from 'vue'
import axios from 'axios'
import App from './App.vue'
import router from './router'

import './assets/main.css'

const app = createApp(App)

app.use(router, axios)

app.mount('#app')
