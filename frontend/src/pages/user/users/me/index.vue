<template>
  <div>
    <el-card>
      <div>
        <div>K.Iさんのコーヒー生産国ランキング</div>
        <p>No1. ケニア 10ポイント</p>
        <p>No2. エチオピア 7ポイント</p>
        <p>No3. コスタリカ 5ポイント</p>
      </div>
    </el-card>

    <div class="card-list">
      <h2>焙煎豆</h2>
      <roasted-bean-list />
      <router-link class="more-link" to="/users/me/roasted_beans">
        焙煎豆をもっと見る
      </router-link>
    </div>

    <div class="card-list">
      <h2>コーヒー</h2>
      <brewing-coffee-list />
      <router-link class="more-link" to="/users/me/brewing_coffees">
        コーヒーをもっと見る
      </router-link>
    </div>
  </div>
</template>

<script setup lang="ts">
import RoastedBeanList from "../../../../components/roasted-bean-list.vue"
import BrewingCoffeeList from "../../../../components/brewing-coffee-list.vue"
</script>

<style lang="scss" scoped>
.card-list {
  display: flex;
  flex-direction: column;

  .more-link {
    color: #dc143c;
    align-self: center;
  }
}
</style>
