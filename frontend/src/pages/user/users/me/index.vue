<template>
  <div>
    <user-profile />

    <div class="card-list">
      <h2>焙煎豆</h2>
      <roasted-bean-list :roasted-beans="roastedBeans" />
      <router-link
        v-if="roastedBeans.length > 0"
        class="more-link"
        to="/users/me/roasted_beans"
      >
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
import RoastedBeanList from "~/components/roasted-bean-list.vue"
import BrewingCoffeeList from "~/components/brewing-coffee-list.vue"
import UserProfile from "~/components/user-profile.vue"

const roastedBeans = [
  {
    name: "エチオピア イルガチェフェ G1",
    kind: "シングルオリジン",
    roast: "ハイロースト",
    processing: "N",
    roastingShopName: "自家焙煎珈琲 隠房",
    postedOn: "2022/3/19",
  },
  {
    name: "隠房ブレンド",
    kind: "ブレンド",
    roast: "シティロースト",
    processing: "W",
    roastingShopName: "自家焙煎珈琲 隠房",
    postedOn: "2022/3/12",
  },
  {
    name: "ケニア",
    kind: "シングルオリジン",
    roast: "シティロースト",
    processing: "W",
    roastingShopName: "自家焙煎珈琲 隠房",
    postedOn: "2022/2/26",
  },
  {
    name: "F・ハニー",
    kind: "ブレンド",
    roast: "シティロースト",
    processing: "W&N",
    roastingShopName: "自家焙煎珈琲 隠房",
    postedOn: "2022/2/20",
  },
]
</script>

<style lang="scss" scoped>
.card-list {
  display: flex;
  flex-direction: column;

  .more-link {
    color: var(--primary-color);
    align-self: center;
  }
}
</style>
