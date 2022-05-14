<template>
  <el-row>
    <el-col :md="12">
      <h3>メールアドレス登録</h3>
      <el-form label-position="top">
        <el-form-item label="メールアドレス">
          <el-input v-model="email" />
        </el-form-item>
      </el-form>
      <span class="send-button">
        <el-button
          type="primary"
          @click="onClickSendEmail"
          :disabled="emailInvalid"
        >
          登録メール送信
        </el-button>
      </span>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
import { createUserRegistrations } from "~/repositories/user_registrations/api"
import { computed, ref } from "vue"
import { useRouter } from "vue-router"

const router = useRouter()

const email = ref("")

const emailInvalid = computed(() => {
  return /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)
    ? false
    : true
})

const onClickSendEmail = async () => {
  // TODO: error handling
  await createUserRegistrations(email.value).then(() => {
    router.push("/email_registration/thanks")
  })
}
</script>

<style lang="scss" scoped>
.send-button {
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
