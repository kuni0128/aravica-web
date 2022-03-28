<template>
  <el-row>
    <el-col class="sign-in" :span="12" :xs="24">
      <h3>ログイン</h3>
      <el-form label-position="top">
        <el-form-item label="メールアドレス">
          <el-input />
        </el-form-item>
        <el-form-item label="パスワード">
          <el-input />
        </el-form-item>
      </el-form>
      <span class="sign-in-button">
        <el-button type="primary">ログイン</el-button>
      </span>
    </el-col>
    <el-col :xs="24" class="divider hidden-sm-and-up"></el-col>
    <el-col class="sign-up" :span="12" :xs="24">
      <div class="sign-up-label">メンバー登録がまだの方はこちら</div>
      <el-button type="primary">無料メンバー登録</el-button>
    </el-col>
  </el-row>
</template>

<style lang="scss" scoped>
.sign-in {
  margin-bottom: 16px;
  &-button {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
}

.divider {
  margin: 16px 0;
}

.sign-up {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;

  &-label {
    font-size: 14px;
    margin-bottom: 6px;
  }
}
</style>
