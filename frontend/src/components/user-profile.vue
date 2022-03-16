<template>
  <el-card>
    <div class="profile">
      <div class="top-area">
        <img
          src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
          class="user-image"
        />
        <el-button class="edit-button">編集</el-button>
      </div>
      <span class="user-name">Kuniaki Ishikawa</span>
      <span class="in-a-word">
        コーヒー好きが高じてこのAravicaというサービスを作りました。
      </span>
    </div>
  </el-card>
</template>

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

  .in-a-word {
    margin-top: 4px;
    font-size: 13px;
  }
}
</style>
