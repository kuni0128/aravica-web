<template>
  <h2>最近投稿した焙煎豆</h2>
  <RoastedBeanList />
  <RouterLink to="/users/me/roasted_beans">すべて見る</RouterLink>
</template>

<script setup lang="ts">
import RoastedBeanList from "../../../../components/roasted-bean-list.vue"
</script>
