<template>
  <el-container class="app-container">
    <el-header class="app-header">
      <div class="toolbar">
        <router-link to="/users/me">Aravica</router-link>
      </div>
    </el-header>
    <el-main>
      <router-view />
    </el-main>
  </el-container>
</template>

<style>
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

.app-container .app-header {
  position: relative;
  background-color: #b3c0d1;
  color: var(--el-text-color-primary);
}

/*.app-container .toolbar {*/
/*  position: absolute;*/
/*  display: inline-flex;*/
/*  align-items: center;*/
/*  top: 50%;*/
/*  right: 20px;*/
/*  transform: translateY(-50%);*/
/*}*/
</style>
