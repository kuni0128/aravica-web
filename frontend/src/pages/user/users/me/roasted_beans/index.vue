<template>
  <h2>焙煎豆</h2>
  <el-card class="filter-form">
    <div class="title">絞り込み条件</div>
    <el-form :model="filterForm">
      <el-form-item label="名前" label-width="100px">
        <el-input v-model="filterForm.name" />
      </el-form-item>
      <el-form-item label="種類" label-width="100px">
        <el-checkbox v-model="filterForm.kind.blend">ブレンド</el-checkbox>
        <el-checkbox v-model="filterForm.kind.singleOrigin">
          シングルオリジン
        </el-checkbox>
      </el-form-item>
      <el-form-item label="焙煎" label-width="100px">
        <el-checkbox v-model="filterForm.roast.lightRoast">
          ライトロースト
        </el-checkbox>
        <el-checkbox v-model="filterForm.roast.cinnamonRoast">
          シナモンロースト
        </el-checkbox>
        <el-checkbox v-model="filterForm.roast.highRoast">
          ハイロースト
        </el-checkbox>
        <el-checkbox v-model="filterForm.roast.cityRoast">
          シティロースト
        </el-checkbox>
        <el-checkbox v-model="filterForm.roast.fullCityRoast">
          フルシティロースト
        </el-checkbox>
        <el-checkbox v-model="filterForm.roast.frenchRoast">
          フレンチロースト
        </el-checkbox>
        <el-checkbox v-model="filterForm.roast.italianRoast">
          イタリアンロースト
        </el-checkbox>
      </el-form-item>
      <el-form-item label="精製" label-width="100px">
        <el-checkbox v-model="filterForm.processing.washed">
          ウォッシュド
        </el-checkbox>
        <el-checkbox v-model="filterForm.processing.natural">
          ナチュラル
        </el-checkbox>
        <el-checkbox v-model="filterForm.processing.pulpedNatural">
          パルプドナチュラル
        </el-checkbox>
        <el-checkbox v-model="filterForm.processing.yellowHoney">
          イエローハニー
        </el-checkbox>
        <el-checkbox v-model="filterForm.processing.redHoney">
          レッドハニー
        </el-checkbox>
        <el-checkbox v-model="filterForm.processing.blackHoney">
          ブラックハニー
        </el-checkbox>
        <el-checkbox v-model="filterForm.processing.sumatra">
          スマトラ式
        </el-checkbox>
      </el-form-item>
    </el-form>
  </el-card>
  <roasted-bean-list :roasted-beans="filteredRoastedBeans" />
</template>

<script setup lang="ts">
import RoastedBeanList from "~/components/roasted-bean-list.vue"
import { computed, reactive } from "vue"

const filterForm = reactive({
  name: "",
  kind: { blend: false, singleOrigin: false },
  roast: {
    lightRoast: false,
    cinnamonRoast: false,
    mediumRoast: false,
    highRoast: false,
    cityRoast: false,
    fullCityRoast: false,
    frenchRoast: false,
    italianRoast: false,
  },
  processing: {
    washed: false,
    natural: false,
    pulpedNatural: false,
    yellowHoney: false,
    redHoney: false,
    blackHoney: false,
    sumatra: false,
  },
})
const filteredRoastedBeans = computed(() =>
  // TODO: Filter by bean instance method
  roastedBeans
    .filter((bean) => bean.name.match(filterForm.name))
    .filter(
      (bean) =>
        Object.values(filterForm.kind).every((k) => k == false) ||
        (filterForm.kind.blend && bean.kind == "ブレンド") ||
        (filterForm.kind.singleOrigin && bean.kind == "シングルオリジン")
    )
    .filter(
      (bean) =>
        Object.values(filterForm.roast).every((k) => k == false) ||
        (filterForm.roast.lightRoast && bean.roast == "ライトロースト") ||
        (filterForm.roast.cinnamonRoast && bean.roast == "シナモンロースト") ||
        (filterForm.roast.mediumRoast && bean.roast == "ミディアムロースト") ||
        (filterForm.roast.highRoast && bean.roast == "ハイロースト") ||
        (filterForm.roast.cityRoast && bean.roast == "シティロースト") ||
        (filterForm.roast.fullCityRoast &&
          bean.roast == "フルシティロースト") ||
        (filterForm.roast.frenchRoast && bean.roast == "フレンチロースト") ||
        (filterForm.roast.italianRoast && bean.roast == "イタリアンロースト")
    )
    .filter(
      (bean) =>
        Object.values(filterForm.processing).every((k) => k == false) ||
        (filterForm.processing.washed && bean.processing == "W") ||
        (filterForm.processing.natural && bean.processing == "N") ||
        (filterForm.processing.pulpedNatural && bean.processing == "PN") ||
        (filterForm.processing.yellowHoney && bean.processing == "YH") ||
        (filterForm.processing.redHoney && bean.processing == "RH") ||
        (filterForm.processing.blackHoney && bean.processing == "BH") ||
        (filterForm.processing.sumatra && bean.processing == "S")
    )
)
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

<style lang="scss" scoped>
.filter-form {
  margin-bottom: 36px;

  .title {
    margin-bottom: 12px;
  }
}
</style>
