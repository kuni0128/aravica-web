<template>
  <div>
    <el-card>
      <div>
        <div class="profile">
          <img
            src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png"
            class="user-image"
          />
          <span class="user-name">Kuniaki Ishikawa</span>
          <span class="in-a-word">
            コーヒー好きが高じてこのAravicaというサービスを作りました。
          </span>
        </div>
      </div>
    </el-card>

    <div class="card-list">
      <h2>焙煎豆</h2>
      <roasted-bean-list />
      <router-link class="more-link" to="/users/me/roasted_beans">
        焙煎豆をもっと見る
      </router-link>
    </div>

    <div class="card-list">
      <h2>コーヒー</h2>
      <brewing-coffee-list />
      <router-link class="more-link" to="/users/me/brewing_coffees">
        コーヒーをもっと見る
      </router-link>
    </div>
  </div>
</template>

<script setup lang="ts">
import RoastedBeanList from "~/components/roasted-bean-list.vue"
import BrewingCoffeeList from "~/components/brewing-coffee-list.vue"
</script>

<style lang="scss" scoped>
.profile {
  display: flex;
  flex-direction: column;
  align-items: start;

  .user-image {
    width: 80px;
    height: 80px;
    border-radius: 50%;
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
.card-list {
  display: flex;
  flex-direction: column;

  .more-link {
    color: var(--primary-color);
    align-self: center;
  }
}
</style>
