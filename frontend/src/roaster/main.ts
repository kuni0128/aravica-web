import { createApp } from "vue"
import { createRouter, createWebHistory, RouteRecordRaw } from "vue-router"
import ElementPlus from "element-plus"
import "element-plus/dist/index.css"
import App from "./App.vue"
import "~/assets/styles/global.css"

const routes: RouteRecordRaw[] = [
  {
    path: "/roaster",
    component: import("../pages/roaster/index.vue"),
  },
]
const router = createRouter({
  history: createWebHistory(),
  routes,
})

createApp(App).use(router).use(ElementPlus).mount("#app")
