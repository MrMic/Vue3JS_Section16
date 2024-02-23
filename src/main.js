import { createApp } from 'vue';

import router from './router';
import store from './store/index.js';
import App from './App.vue';

import BaseCard from './components/ui/BaseCard.vue';
import BaseButton from './components/ui/BaseButton.vue';
import BaseBadge from './components/ui/BaseBadge.vue';
import BaseSpinner from './components/ui/BaseSpinner.vue';
import BaseDialog from './components/ui/BaseDialog.vue';

const app = createApp(App);

// ╾──────────────────────────────╼ ROUTER ╾────────────────────────────╼
app.use(router);

// ╾──────────────────────────────╼ STORE ╾──────────────────────────────╼
app.use(store);

// ╾────────────────────────╼ GLOBAL COMPONENT ╾─────────────────────╼
app.component('BaseCard', BaseCard);
app.component('BaseButton', BaseButton);
app.component('BaseBadge', BaseBadge);
app.component('BaseSpinner', BaseSpinner);
app.component('BaseDialog', BaseDialog);

// ╾────────────────────────────────╼ APP ╾────────────────────────────────╼
app.mount('#app');
