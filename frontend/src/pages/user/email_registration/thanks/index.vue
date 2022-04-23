<template>
  <el-row>
    <el-col :md="12">
      <h3>登録ありがとうございます</h3>
      <p>メールアドレス存在確認メールを送信しました。</p>
      <span class="back-button">
        <router-link to="/">
          <el-button type="primary" @click="router.push('/')">
            トップページに戻る
          </el-button>
        </router-link>
      </span>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
import { useRouter } from "vue-router"

const router = useRouter()
</script>

<style lang="scss" scoped>
.back-button {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
