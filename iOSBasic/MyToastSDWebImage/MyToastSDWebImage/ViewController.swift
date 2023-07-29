// github test

// 3rd party 라이브러리 사용하기
// 깃허브 라이브러리 이용하기

// Cocoa Pod 이용하기
// CLI(Command Line Interface): DOS창, 터미널창

// Swift-Toast : 안드로이드 스타일의 토스트 팝업 구현
// SDWebImager : HTTP 통신으로 이미지를 다운로드하고, ImageView 에 이미지를 로딩시켜줌.

// Cocoa Pod 이용 순서
// 0. 기본 xcodeproj 프로젝트 닫기
// 1. 현재 폴더에서 터미널 열기
// 2. Cocoa Pod 유틸 설치
//    -  명령어: suddo gem install cocoapods 엔터
//    -  Cocoa Pod 업데이트
//    -  명령어: pod repo update 엔터
// 3. 프로젝트 초기화
//    -  명령어: pod init -> PodFile 이 생성됨
// 4. 라이브러리 설치
//    -  명령어: pod install
// 5. 프로젝트 열기: xcodeproj 가 아니라 xcworkspace 열기
//    -  워크 스페이스 열기: 터미널 -> open 프로젝트이름.xcworkspace
// 6. Xcode 에서 pod 파일을 편집하기 (라이브러리 목록 기술)
// 7. 터미널에서 pod install 한번 더하기




import UIKit
import SDWebImage
import Toast_Swift

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.makeToast("토스트 창입니다.", duration: 5.0, position: .bottom)
        
        let url: URL = URL(string: "https://image.utoimage.com/preview/cp872722/2022/12/202212008462_206.jpg")!
        
        self.imageView.sd_setImage(with: url) { image, error, cacheType, imgUrl in
            print(imgUrl!)
        }
        
        
    }


}

