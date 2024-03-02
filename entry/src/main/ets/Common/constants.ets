import Env from "../env/index"

let baseUrl:string = ""

if(Env == 'local'){
  baseUrl = "https://api.nnxv.cn"
}
export {
  baseUrl
}