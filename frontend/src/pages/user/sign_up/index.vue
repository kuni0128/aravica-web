<template>
  <el-row>
    <el-col :md="12">
      <h3>プロフィールを登録</h3>
      <el-form>
        <el-form-item label="写真" :label-width="labelWidth">
          <el-upload action="" :auto-upload="false">
            <template #default>
              <div class="user-image">
                <img
                  src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
                  class="thumbnail"
                />
                <el-button>ファイルを選択</el-button>
              </div>
            </template>
          </el-upload>
        </el-form-item>
        <el-form-item label="ユーザー名" :label-width="labelWidth">
          <el-input maxlength="20" show-word-limit />
        </el-form-item>
        <el-form-item label="自己紹介" :label-width="labelWidth">
          <el-input type="textarea" maxlength="60" show-word-limit />
        </el-form-item>
        <el-form-item label="パスワード" :label-width="labelWidth">
          <el-input type="password" />
        </el-form-item>
        <el-form-item label="確認用パスワード" :label-width="labelWidth">
          <el-input type="password" />
        </el-form-item>
        <span class="register-button">
          <el-button type="primary">登録</el-button>
        </span>
      </el-form>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
const labelWidth = "140px"
</script>

<style lang="scss" scoped>
.user-image {
  display: flex;
  gap: 14px;

  .thumbnail {
    width: 80px;
    height: 80px;
    border-radius: 50%;
  }

  .el-button {
    align-self: end;
  }
}

.user-name {
  margin-top: 4px;
  font-weight: bold;
}

.introduction {
  margin-top: 4px;
  font-size: 13px;
}

.register-button {
  display: flex;
  justify-content: center;
}
</style>
