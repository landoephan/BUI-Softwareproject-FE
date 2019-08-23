import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import VModal from "vue-js-modal";
import VueResource from "vue-resource";

Vue.config.productionTip = false;

Vue.use(VModal, { dynamic: true, dialog: true, injectModalsContainer: true });
Vue.use(VueResource);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
