import axios, { AxiosError, AxiosResponse, InternalAxiosRequestConfig } from '@ohos/axios';
import { baseUrl } from "..//constants"

const service=axios.create({
  // 配置域名前缀
  baseURL:baseUrl,
})
// 添加请求拦截器
service.interceptors.request.use((config:InternalAxiosRequestConfig) => {
  // 对请求数据做点什么
  return config;
}, (error:AxiosError) => {
  // 对请求错误做些什么
  return Promise.resolve(error);
});
// 添加响应拦截器
service.interceptors.response.use((response:AxiosResponse)=> {
  // 对响应数据做点什么
  return response;
}, (error:AxiosError)=> {
  // 对响应错误做点什么
  return Promise.resolve(error);
});
export default service;

