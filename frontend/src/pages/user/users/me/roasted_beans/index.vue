<template>
  <h2>焙煎豆</h2>
  <roasted-bean-list :roasted-beans="roastedBeans" />
</template>

<script setup lang="ts">
import RoastedBeanList from "~/components/roasted-bean-list.vue"

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
  {
    name: "ONIBUSブレンド",
    kind: "ブレンド",
    roast: "ハイロースト",
    processing: "W",
    roastingShopName: "ONIBUS COFFEE",
    postedOn: "2022/2/18",
  },
  {
    name: "パナマ コトワ ダンカン農園",
    kind: "シングルオリジン",
    roast: "ハイロースト",
    processing: "N",
    roastingShopName: "自家焙煎珈琲 隠房",
    postedOn: "2022/2/04",
  },
  {
    name: "彦星ブレンド",
    kind: "ブレンド",
    roast: "シティロースト",
    processing: "W",
    roastingShopName: "金澤屋珈琲",
    postedOn: "2022/2/01",
  },
]
</script>
