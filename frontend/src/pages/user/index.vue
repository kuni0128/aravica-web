<template>
  <el-row>
    <el-col class="story" :span="12" :xs="24">
      <div class="text-main">美味しいコーヒーをもっと身近に</div>
      <p>
        Aravicaは、普段飲んでいるお気に入りのコーヒーを共有することで、他ユーザーや焙煎士と一緒にコーヒーをもっと身近に楽しめるようになるサービスです。
      </p>
    </el-col>
    <el-col :span="12" :xs="24">
      <img class="image" src="src/assets/about.svg" />
    </el-col>
  </el-row>
</template>

<style lang="scss" scoped>
.story {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

  .text-main {
    font-size: 28px;
    font-weight: bold;
  }

  .image {
    width: 30vw;
  }
}
</style>
