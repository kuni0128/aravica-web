import axios, { AxiosInstance } from "axios"
import { Configuration, UserApi } from "~lib/aravica/api_client/v1"

// TODO: いい感じのディレクトリに置いて、共通化する
const conf = new Configuration({
  basePath: "http://localhost:33000/api/v1",
  baseOptions: {},
})
const apiAxiosClient = axios.create()

const Client = <T>(
  Api: new (
    configuration: Configuration,
    basePath: string,
    axios: AxiosInstance
  ) => T
): T => {
  return new Api(conf, "", apiAxiosClient)
}

const userApi = Client(UserApi)

// TODO: リクエスト/レスポンスを変換するaxios interceptorsが必要

export const createUserRegistrations = async (email: string) => {
  await userApi.createUserRegistrations({ email })
}
