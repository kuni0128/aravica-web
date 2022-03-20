<template>
  <el-dialog @close="handleDialogClosed" v-model="dialogVisible" width="90vw">
    <el-descriptions title="焙煎データ" :column="1" border>
      <el-descriptions-item label="名前">
        {{ roastedBean.name }}
      </el-descriptions-item>
      <el-descriptions-item label="焙煎">
        {{ roastedBean.roast }}
      </el-descriptions-item>
      <el-descriptions-item label="焙煎店舗名">
        {{ roastedBean.roastingShopName }}
      </el-descriptions-item>
      <el-descriptions-item label="投稿日">
        {{ roastedBean.postedOn }}
      </el-descriptions-item>
    </el-descriptions>

    <div class="divider" />

    <el-descriptions title="生豆データ" :column="1" border>
      <el-descriptions-item label="品種">ティピカ</el-descriptions-item>
      <el-descriptions-item label="精製">
        {{ roastedBean.processing }}
      </el-descriptions-item>
      <el-descriptions-item label="生産国">エチオピア</el-descriptions-item>
      <el-descriptions-item label="地域"></el-descriptions-item>
      <el-descriptions-item label="農園"></el-descriptions-item>
      <el-descriptions-item label="生産者"></el-descriptions-item>
    </el-descriptions>

    <div class="divider" />

    <div class="image-list">
      <p class="label">写真</p>
      <el-image v-for="image in roastedBean.imagePaths" :src="image" />
    </div>
  </el-dialog>
</template>

<script setup lang="ts">
type RoastedBean = {
  name: string
  kind: string
  roast: string
  processing: string
  roastingShopName: string
  postedOn: string
  imagePaths: string[]
}
defineProps<{
  dialogVisible: boolean
  roastedBean: RoastedBean
}>()

const emit = defineEmits<{ (e: "close"): void }>()
const handleDialogClosed = () => {
  emit("close")
}
</script>

<style lang="scss" scoped>
.image-list {
  margin-bottom: 12px;

  .label {
    font-size: 16px;
    font-weight: 700;
  }

  .el-image {
    margin-right: 12px;
    margin-bottom: 12px;
  }
}

.divider {
  margin-top: 24px;
}
</style>
