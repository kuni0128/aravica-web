import { defineConfig } from "vite"
import vue from "@vitejs/plugin-vue"

// https://vitejs.dev/config/
export default defineConfig({
  root: "./src/entrypoints",
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
