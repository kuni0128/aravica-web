<template>
  <div>
    <el-row :gutter="12">
      <el-col
        v-for="(o, i) in 4"
        :key="o"
        :span="6"
        :xs="24"
        :sm="12"
        :md="8"
        :lg="6"
        :xl="6"
      >
        <el-card class="card" :body-style="{ padding: '12px' }">
          <img
            src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
            class="image"
          />
          <div style="padding: 14px">
            <span>ペーパードリップ</span>
            <div class="bottom">
              <time class="time">{{ today }}</time>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue"

const today = ref(new Date())
</script>

<style lang="scss">
.time {
  font-size: 13px;
  color: #999;
}

.card {
  margin-bottom: 12px;
}

.bottom {
  margin-top: 13px;
  line-height: 12px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.image {
  width: 100%;
  display: block;
}
</style>
