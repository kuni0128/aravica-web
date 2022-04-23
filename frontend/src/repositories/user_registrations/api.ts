import { UserApi } from "~lib/aravica/api_client/v1"
import { apiClient } from "~lib/axios/api_client/v1/client"

const userApi = apiClient(UserApi)

export const createUserRegistrations = async (email: string) => {
  await userApi.createUserRegistrations({ email, fullName: "hokkaido" })
}
