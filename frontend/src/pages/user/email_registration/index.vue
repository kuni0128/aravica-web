<template>
  <el-row>
    <el-col :md="12">
      <h3>メールアドレス登録</h3>
      <el-form label-position="top">
        <el-form-item label="メールアドレス">
          <el-input />
        </el-form-item>
      </el-form>
      <span class="send-button">
        <router-link to="/sign_up">
          <el-button type="primary">登録メール送信</el-button>
        </router-link>
      </span>
    </el-col>
  </el-row>
</template>

<style lang="scss" scoped>
.send-button {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
