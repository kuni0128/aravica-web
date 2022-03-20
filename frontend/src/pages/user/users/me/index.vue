<template>
  <div>
    <user-profile />

    <div class="card-list">
      <h2>焙煎豆</h2>
      <roasted-bean-list :roasted-beans="roastedBeans" />
      <router-link
        v-if="roastedBeans.length > 0"
        class="more-link"
        to="/users/me/roasted_beans"
      >
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
import RoastedBeanList from "~/components/user/roasted_bean_list/roasted-bean-list.vue"
import BrewingCoffeeList from "~/components/user/brewing-coffee-list.vue"
import UserProfile from "~/components/user/user-profile.vue"
import { listUserRoastedBeans } from "~/domains/roasted_beans"

const roastedBeans = listUserRoastedBeans().filter((bean, id) => id < 4)
</script>

<style lang="scss" scoped>
.card-list {
  display: flex;
  flex-direction: column;

  .more-link {
    color: var(--primary-color);
    align-self: center;
  }
}
</style>
