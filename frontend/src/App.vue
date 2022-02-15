<template>
  <ElContainer>
    <ElHeader>
      <RouterLink to="/users/me">my page</RouterLink>
    </ElHeader>
    <ElMain>
      <RouterView />
    </ElMain>
  </ElContainer>
</template>

<script setup lang="ts"></script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
