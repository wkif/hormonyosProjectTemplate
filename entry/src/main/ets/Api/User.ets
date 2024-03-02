import service from "../Common/Utils/Request"

export function getUser(){
  return service({
    // 接口地址
    url: '/api/yiyan.php',
    method: 'get',
  })
}