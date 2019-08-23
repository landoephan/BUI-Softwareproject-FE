import Vue from "vue";
import Router from "vue-router";
import Home from "./views/Home.vue";

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
    },
    {
      path: "/locations",
      name: "locations",
      component: () => import("./views/Locations.vue")
    },
    {
      path: "/catalog",
      name: "catalog",
      component: () => import("./views/Catalog.vue")
    },
    {
      path: "/about",
      name: "about",
      component: () => import("./views/About.vue")
    },
    {
      path: "/contact",
      name: "contact",
      component: () => import("./views/Contact.vue")
    }
    // {
    //   path: "/login",
    //   name: "login",
    //   component: () => import("./views/Login.vue")
    // },
    // {
    //   path: "/register",
    //   name: "register",
    //   component: () => import("./views/Register.vue")
    // },
  ]
});
