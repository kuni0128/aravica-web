<template>
  <el-row :gutter="12">
    <el-col :span="6" :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
      <el-card class="card" :body-style="{ padding: '12px' }">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          class="image"
        />
        <div class="content">
          <div>エチオピア イルガチェフェ G1</div>
          <div>自家焙煎珈琲 隠房</div>
          <time class="time">{{ today }}</time>
        </div>
      </el-card>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
import { ref } from "vue"

const today = ref(new Date().toDateString())
</script>

<style lang="scss">
.card {
  margin-bottom: 12px;

  .image {
    width: 100%;
    display: block;
  }

  .content {
    padding-top: 8px;

    .time {
      font-size: 13px;
      color: #999;
    }
  }
}
</style>
