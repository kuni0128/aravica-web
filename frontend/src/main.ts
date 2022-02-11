import { createApp } from "vue"
import { createRouter, createWebHistory, RouteRecordRaw } from "vue-router"
import ElementPlus from "element-plus"
import "element-plus/dist/index.css"
import App from "./App.vue"

const routes: RouteRecordRaw[] = [
  { path: "/users/me", component: import("./pages/user/users/me/index.vue") },
  {
    path: "/users/me/roasted_beans",
    component: import("./pages/user/users/me/roasted_beans/index.vue"),
  },
]
const router = createRouter({
  history: createWebHistory(),
  routes,
})

createApp(App).use(router).use(ElementPlus).mount("#app")
