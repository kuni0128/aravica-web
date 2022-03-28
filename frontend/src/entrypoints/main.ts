import { createApp } from "vue"
import { createRouter, createWebHistory, RouteRecordRaw } from "vue-router"
import ElementPlus from "element-plus"
import "element-plus/dist/index.css"
import "element-plus/theme-chalk/display.css"
import App from "./App.vue"
import "~/assets/styles/global.css"

const routes: RouteRecordRaw[] = [
  {
    path: "/",
    component: import("../pages/user/index.vue"),
  },
  {
    path: "/users/me",
    component: import("../pages/user/users/me/index.vue"),
  },
  {
    path: "/users/me/roasted_beans",
    component: import("../pages/user/users/me/roasted_beans/index.vue"),
  },
  {
    path: "/users/me/brewing_coffees",
    component: import("../pages/user/users/me/brewing_coffees/index.vue"),
  },
  {
    path: "/sign_in",
    component: import("../pages/user/sign_in/index.vue"),
  },
  {
    path: "/sign_up",
    component: import("../pages/user/sign_up/index.vue"),
  },
]
const router = createRouter({
  history: createWebHistory(),
  routes,
})

createApp(App).use(router).use(ElementPlus).mount("#app")
