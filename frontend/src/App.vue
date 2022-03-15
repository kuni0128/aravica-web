<template>
  <el-container>
    <el-header>
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
  font-family: -apple-system, "BlinkMacSystemFont", "Hiragino Kaku Gothic ProN",
    "Hiragino Sans", Meiryo, sans-serif, "Segoe UI Emoji";
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

.el-container {
  .el-header {
    display: flex;
    align-items: center;
    background-color: var(--primary-color);
    padding-left: 120px;
    padding-right: 120px;

    .title {
      color: #ffffff;
      font-size: 20px;
      font-weight: bold;
      text-decoration: none;
    }
  }

  .el-main {
    padding-left: 120px;
    padding-right: 120px;
  }
}
</style>
