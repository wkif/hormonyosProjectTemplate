import { _getUser } from "./Model"


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
         Button("刷新")
           .onClick(async ()=>{
             const data = await _getUser();
             this.message = data.content
           })

      }
      .width('100%')
    }
    .height('100%')
  }
}