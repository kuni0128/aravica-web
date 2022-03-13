<template>
  <el-card>
    <div>
      <div>K.Iさんのコーヒー生産国ランキング</div>
      <p>No1. ケニア 10ポイント</p>
      <p>No2. エチオピア 7ポイント</p>
      <p>No3. コスタリカ 5ポイント</p>
    </div>
  </el-card>

  <h2>最近購入した焙煎豆</h2>
  <roasted-bean-list />
  <router-link to="/users/me/roasted_beans">すべて見る</router-link>

  <h2>最近飲んだコーヒー</h2>
  <brewing-coffee-list />
  <router-link to="/users/me/brewing_coffees">すべて見る</router-link>
</template>

<script setup lang="ts">
import RoastedBeanList from "../../../../components/roasted-bean-list.vue"
import BrewingCoffeeList from "../../../../components/brewing-coffee-list.vue"
</script>
