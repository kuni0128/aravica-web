<template>
  <div>
    <div v-if="roastedBeans.length < 1">焙煎豆がありません</div>
    <el-row :gutter="12">
      <el-col
        v-for="bean in roastedBeans"
        :span="6"
        :xs="24"
        :sm="12"
        :md="8"
        :lg="6"
        :xl="6"
      >
        <el-card
          class="card"
          @click="handleCardClicked(bean)"
          :body-style="{ padding: '12px' }"
        >
          <div class="kind-label">{{ bean.kind }}</div>
          <img :src="bean.imagePaths[0]" class="image" />
          <div class="content">
            <div class="name">{{ bean.name }}</div>
            <div class="detail">{{ bean.roast }}／{{ bean.processing }}</div>
            <div>{{ bean.roastingShopName }}</div>
            <time class="time">{{ bean.postedOn }}</time>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <roasted-bean-dialog
      :dialog-visible="roastedBeanDialogVisible"
      :roasted-bean="dialogRoastedBean"
      @close="handleDialogClosed"
    />
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue"
import RoastedBeanDialog from "~/components/user/roasted_bean_list/roasted-bean-dialog.vue"

type RoastedBean = {
  name: string
  kind: string
  roast: string
  processing: string
  roastingShopName: string
  postedOn: string
  imagePaths: string[]
}
defineProps<{ roastedBeans: RoastedBean[] }>()

const roastedBeanDialogVisible = ref(false)
const dialogRoastedBean = ref({
  name: "",
  kind: "",
  roast: "",
  processing: "",
  roastingShopName: "",
  postedOn: "",
  imagePaths: [""],
})

const handleCardClicked = (roastedBean: RoastedBean) => {
  dialogRoastedBean.value = roastedBean
  roastedBeanDialogVisible.value = true
}
const handleDialogClosed = () => {
  roastedBeanDialogVisible.value = false
}
</script>

<style lang="scss">
.card {
  position: relative;

  .kind-label {
    position: absolute;
    left: 0;
    top: 0;
    box-sizing: border-box;
    padding: 0 8px;
    margin: 0;
    height: 24px;
    line-height: 24px;
    font-size: 10px;
    letter-spacing: 0.1em;
    color: white;
    background: var(--secondary-color);
    box-shadow: 0 2px 2px rgba(0, 0, 0, 0.12);
  }

  .image {
    width: 100%;
    display: block;
  }

  .content {
    padding-top: 8px;

    .name {
      font-weight: bold;
    }

    .detail {
      font-size: 12px;
    }

    .time {
      font-size: 13px;
      color: #999;
    }
  }
}
</style>
