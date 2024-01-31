import { createApp } from 'vue'

import router from './router'
import App from './App.vue'

const app = createApp(App)

// ╾──────────────────────────────╼ ROUTER ╾────────────────────────────╼
app.use(router)

// ╾────────────────────────────────╼ APP ╾────────────────────────────────╼
app.mount('#app')
