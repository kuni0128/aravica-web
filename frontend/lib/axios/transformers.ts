import { AxiosRequestTransformer } from "axios"

export const transformRequestCamelToSnake: AxiosRequestTransformer = (
  data: any
) => {
  if (data instanceof FormData) {
    return data
  }
  if (data) {
    return JSON.stringify(camelToSnake(JSON.parse(data)))
  }
  return data
}

const camelToSnake = (data: any) => {
  let newData = {} as any
  Object.entries(data).forEach((pair) => {
    newData[pair[0].replace(/([A-Z])/g, "_$1").toLowerCase()] = pair[1]
  })
  return newData
}
