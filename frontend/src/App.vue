<template>
  <el-container class="app-container">
    <el-header class="app-header">
      <router-link class="title" to="/users/me">Aravica</router-link>
    </el-header>
    <el-main>
      <router-view />
    </el-main>
  </el-container>
</template>

<style lang="scss">
html,
body {
  margin: 0px !important;
  padding: 0px !important;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

.app-container {
  .app-header {
    padding: 12px;
    background-color: #dc143c;
    .title {
      color: #ffffff;
      font-size: 20px;
      font-weight: bold;
      text-decoration: none;
    }
  }
}
</style>
