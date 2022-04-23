import { Configuration } from "../../../aravica/api_client/v1"
import axios, { AxiosInstance } from "axios"

const conf = new Configuration({
  basePath: "http://localhost:33000/api/v1",
  baseOptions: {},
})
const apiAxiosClient = axios.create()

export const apiClient = <T>(
  ApiClass: new (
    configuration: Configuration,
    basePath: string,
    axios: AxiosInstance
  ) => T
): T => {
  return new ApiClass(conf, "", apiAxiosClient)
}
