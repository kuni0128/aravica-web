<template>
  <el-row>
    <el-col class="story" :span="12" :xs="24">
      <div class="text-main">好きなコーヒーをもっと知る・楽しむ</div>
      <p>
        Aravicaは、普段飲んでいるお気に入りのコーヒーを共有することで、他のコーヒー愛好家や焙煎士と共にコーヒーをもっと深く楽しむためのサービスです。
      </p>
    </el-col>
    <el-col :span="12" :xs="24">
      <img class="image" src="assets/about.svg" />
    </el-col>
  </el-row>

  <el-row class="how-to-use" :gutter="8">
    <el-col class="title" :span="24">楽しみ方の例</el-col>
    <el-col :span="8" :xs="24">
      <el-card shadow="never">
        <template #header>コーヒーを投稿する</template>
        <p>
          お気に入りの焙煎豆の情報や普段飲んでいるコーヒーの抽出レシピ・感想を投稿しましょう。
        </p>
        <p>
          他のコーヒー愛好家が新しいコーヒーと出会うきっかけになるかもしれません。
        </p>
      </el-card>
    </el-col>
    <el-col :span="8" :xs="24">
      <el-card shadow="never">
        <template #header>色々なコーヒーを見る・飲む</template>
        <p>
          他のコーヒー愛好家が投稿したコーヒーを見て、気になる焙煎豆を購入して飲んでみましょう。
        </p>
        <p>自分の中のコーヒーの世界が少し広がるかもしれません。</p>
      </el-card>
    </el-col>
    <el-col :span="8" :xs="24">
      <el-card shadow="never">
        <template #header>焙煎士を応援する</template>
        <p>
          丁寧に焙煎してくれている焙煎士に応援や感謝の気持ちを伝えましょう。
        </p>
      </el-card>
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

.how-to-use {
  margin-top: 120px;

  .title {
    display: flex;
    justify-content: center;
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 16px;
  }

  .el-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    background-color: #fff9f5;
    min-height: 180px;
    margin-bottom: 12px;
    border: none;

    :deep(.el-card__header) {
      font-size: 20px;
      font-weight: bold;
    }

    :deep(.el-card__body) {
      font-size: 14px;
    }
  }
}
</style>
