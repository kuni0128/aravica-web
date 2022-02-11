<template>
  <div>
    <p>{{ pageTitle }}</p>
    <RouterLink to="/users/me/roasted_beans">roasted beans list</RouterLink>
  </div>
</template>

<script setup lang="ts">
const pageTitle = "My page works!"
</script>
