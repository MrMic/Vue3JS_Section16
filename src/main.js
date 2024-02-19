import { createApp } from 'vue';

import router from './router';
import store from './store/index.js';
import App from './App.vue';

import BaseCard from './components/ui/BaseCard.vue';
import BaseButton from './components/ui/BaseButton.vue';
import BaseBadge from './components/ui/BaseBadge.vue';

const app = createApp(App);

// ╾──────────────────────────────╼ ROUTER ╾────────────────────────────╼
app.use(router);

// ╾──────────────────────────────╼ STORE ╾──────────────────────────────╼
app.use(store);

// ╾────────────────────────╼ GLOBAL COMPONENT ╾─────────────────────╼
app.component('BaseCard', BaseCard);
app.component('BaseButton', BaseButton);
app.component('BaseBadge', BaseBadge);

// ╾────────────────────────────────╼ APP ╾────────────────────────────────╼
app.mount('#app');
