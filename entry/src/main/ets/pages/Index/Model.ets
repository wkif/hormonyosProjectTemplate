import { getUser } from "../../Api/User"

async function _getUser(){
  const {
    status,
    data
  } = await getUser()
  if(status==200){
    return data
  }else{
    return ""
  }
}


export {
  _getUser
}