import { Configuration } from "../../../aravica/api_client/v1"
import axios, { AxiosInstance, AxiosRequestTransformer } from "axios"
import { transformRequestCamelToSnake } from "~lib/axios/transformers"

const conf = new Configuration({
  basePath: "http://localhost:33000/api/v1",
  baseOptions: {},
})

const axiosInstance = axios.create({
  transformRequest: [
    transformRequestCamelToSnake,
    ...(axios.defaults.transformRequest as AxiosRequestTransformer[]),
  ],
})

export const apiClient = <T>(
  ApiClass: new (
    configuration: Configuration,
    basePath: string,
    axios: AxiosInstance
  ) => T
): T => {
  return new ApiClass(conf, "", axiosInstance)
}
