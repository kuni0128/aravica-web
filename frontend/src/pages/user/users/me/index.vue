<template>
  <h2>最近投稿した焙煎豆</h2>
  <roasted-bean-list />
  <router-link to="/users/me/roasted_beans">すべて見る</router-link>
</template>

<script setup lang="ts">
import RoastedBeanList from "../../../../components/roasted-bean-list.vue"
</script>
