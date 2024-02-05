import { createApp } from 'vue'

import router from './router'
import store from './store/index.js'
import App from './App.vue'

const app = createApp(App)

// ╾──────────────────────────────╼ ROUTER ╾────────────────────────────╼
app.use(router)

// ╾──────────────────────────────╼ STORE ╾──────────────────────────────╼
app.use(store)

// ╾────────────────────────────────╼ APP ╾────────────────────────────────╼
app.mount('#app')
