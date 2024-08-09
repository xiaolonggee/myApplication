import { Banner } from './components/Banner'
import {EnablementItem} from './components/EnablementItem'
import {TutorialItem} from './components/TutorialItem'
export class ArticleClass {
  id: string = '';
  imageSrc: ResourceStr = '';
  stepStr: string = '';
  title: string = '';
  url: string = '';

  constructor(id: string, imageSrc: ResourceStr, stepStr: string, title: string, url: string) {
    this.id = id;
    this.imageSrc = imageSrc;
    this.stepStr = stepStr;
    this.title = title;
    this.url = url
  }
}

@Entry
@Component
struct Index {
  @State message: string = '快速入门';
  build() {
    Column() {
      Text(this.message)
        .fontSize(24)
        .fontWeight(700)
        .width('100%')
        .textAlign(TextAlign.Start)
        .padding({left:6})
        .fontFamily('HarmonyHeiTi-Bold')
        .lineHeight(33)
      Scroll(){
        Column(){
          Banner()
            .margin({top:10,bottom:10})
          EnablementItem()
            .margin({top:10,bottom:10})
          TutorialItem()
        }
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
      .align(Alignment.TopStart)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f1f3f5')
  }
}


