<template>
  <el-row :gutter="12">
    <el-col :span="6" :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
      <el-card class="card" :body-style="{ padding: '12px' }">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          class="image"
        />
        <div class="content">
          <div class="name">エチオピア イルガチェフェ G1</div>
          <div class="detail">ハイロースト：N</div>
          <div>自家焙煎珈琲 隠房</div>
          <time class="time">2022/3/19</time>
        </div>
      </el-card>
    </el-col>
    <el-col :span="6" :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
      <el-card class="card" :body-style="{ padding: '12px' }">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          class="image"
        />
        <div class="content">
          <div class="name">隠房ブレンド</div>
          <div class="detail">シティロースト：W</div>
          <div>自家焙煎珈琲 隠房</div>
          <time class="time">2022/3/12</time>
        </div>
      </el-card>
    </el-col>
    <el-col :span="6" :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
      <el-card class="card" :body-style="{ padding: '12px' }">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          class="image"
        />
        <div class="content">
          <div class="name">ケニア</div>
          <div class="detail">シティロースト：W</div>
          <div>自家焙煎珈琲 隠房</div>
          <time class="time">2022/2/26</time>
        </div>
      </el-card>
    </el-col>
    <el-col :span="6" :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
      <el-card class="card" :body-style="{ padding: '12px' }">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          class="image"
        />
        <div class="content">
          <div class="name">F・ハニー</div>
          <div class="detail">シティロースト：W&N</div>
          <div>自家焙煎珈琲 隠房</div>
          <time class="time">2022/2/20</time>
        </div>
      </el-card>
    </el-col>
  </el-row>
</template>

<script setup lang="ts"></script>

<style lang="scss">
.card {
  margin-bottom: 12px;

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
