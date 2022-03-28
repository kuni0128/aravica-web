<template>
  <el-container>
    <el-header>
      <router-link class="title" to="/users/me">Aravica</router-link>
      <el-button>
        <router-link to="/sign_in">ログイン</router-link>
      </el-button>
    </el-header>
    <el-main>
      <router-view />
    </el-main>
    <el-footer height="120px">
      © Aravica inc. 2022 All Rights Reserved.
    </el-footer>
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
    justify-content: space-between;
    background-color: var(--primary-color);

    .title {
      color: #ffffff;
      font-size: 20px;
      font-weight: bold;
      text-decoration: none;
    }
  }

  .el-main {
    padding-left: 10vw;
    padding-right: 10vw;
  }

  .el-footer {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: var(--secondary-color);
    font-weight: bold;
    color: #ffffff;
    padding-left: 10vw;
    padding-right: 10vw;
  }
}
</style>
