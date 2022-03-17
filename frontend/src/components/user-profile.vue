<template>
  <el-card>
    <div class="profile">
      <div class="top-area">
        <img :src="thumbnail" class="user-image" />
        <el-button @click="editDialogVisible = true" class="edit-button">
          編集
        </el-button>
        <el-dialog
          v-model="editDialogVisible"
          title="プロフィールを編集"
          width="90vw"
        >
          <el-form :model="editDialogForm">
            <el-form-item label="写真" label-width="100px">
              <el-upload action="" :auto-upload="false">
                <template #default>
                  <div class="edit-dialog-thumbnail">
                    <img :src="editDialogForm.thumbnail" class="user-image" />
                    <el-button>ファイルを選択</el-button>
                  </div>
                </template>
              </el-upload>
            </el-form-item>
            <el-form-item label="ユーザー名" label-width="100px">
              <el-input
                v-model="editDialogForm.userName"
                maxlength="20"
                show-word-limit
              />
            </el-form-item>
            <el-form-item label="自己紹介" label-width="100px">
              <el-input
                v-model="editDialogForm.introduction"
                type="textarea"
                maxlength="60"
                show-word-limit
              />
            </el-form-item>
          </el-form>
          <template #footer>
            <span>
              <el-button @click="editDialogVisible = false">
                キャンセル
              </el-button>
              <el-button type="primary" @click="editDialogVisible = false">
                変更
              </el-button>
            </span>
          </template>
        </el-dialog>
      </div>
      <span class="user-name">{{ userName }}</span>
      <span class="introduction">{{ introduction }}</span>
    </div>
  </el-card>
</template>

<script setup lang="ts">
import { reactive, ref } from "vue"

const thumbnail = ref(
  "https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
)
const userName = ref("Kuniaki Ishikawa")
const introduction = ref(
  "コーヒー好きが高じてこのAravicaというサービスを作りました。"
)
const editDialogVisible = ref(false)
const editDialogForm = reactive({
  thumbnail: thumbnail.value,
  userName: userName.value,
  introduction: introduction.value,
})
</script>

<style lang="scss" scoped>
.profile {
  display: flex;
  flex-direction: column;
  align-items: start;

  .top-area {
    display: flex;
    justify-content: space-between;
    width: 100%;

    .user-image {
      width: 80px;
      height: 80px;
      border-radius: 50%;
    }

    .edit-button {
      align-self: start;
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
}

.edit-dialog-thumbnail {
  display: flex;
  gap: 14px;

  .el-button {
    align-self: end;
  }
}
</style>
