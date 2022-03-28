<template>
  <el-row>
    <el-col :md="12">
      <h3>無料メンバー登録</h3>
      <el-form label-position="top">
        <el-form-item label="メールアドレス">
          <el-input />
        </el-form-item>
      </el-form>
      <span class="sign-up-button">
        <el-button type="primary">登録メール送信</el-button>
      </span>
    </el-col>
  </el-row>
</template>

<style lang="scss" scoped>
.sign-up {
  display: flex;
  flex-direction: column;
  align-items: center;
  &-button {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
}

//.sign-up {
//  display: flex;
//  flex-direction: column;
//  align-items: center;
//  justify-content: center;
//
//  &-label {
//    font-size: 14px;
//    margin-bottom: 6px;
//  }
//}
</style>
