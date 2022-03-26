import { defineConfig } from "vite"
import vue from "@vitejs/plugin-vue"

// https://vitejs.dev/config/
export default defineConfig({
  root: "./src",
  plugins: [vue()],
  server: {
    port: 38080,
  },
  resolve: {
    alias: {
      "~": `${__dirname}/src/`,
    },
  },
})
