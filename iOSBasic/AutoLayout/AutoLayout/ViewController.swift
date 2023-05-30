//
//  ViewController.swift
//  AutoLayout
//
//  Created by 이지현 on 2023/05/30.
//

// 화면 배치 레이아웃 방법 2가지
// 1. 오토 리사이징(Auto Resizing) : 기본값, 간단한 배치용도
// 2. 오토 레이아웃(Auto Layout) : 주로 사용함.
// 사용용도 : 다양한 화면 해상도 대응

// Xcode 11부터 Swift UI 지원 - 제한대상 iOS 13부터 사용가능.
// Swift UI : 향후 3~5년 정도 후애 상용화하는 것을 권장

// 앱을 만들 때, 해상도 지원은 어디까지?
// 모든 해상도를 지원하는 것은 시간, 노력이 너무 들어간다. 개인, 소규모는 어렵다
// 1. 아이패드는 PC 해상도 급이기 때문에 제외한다. 폰해상도만 지원한다.
// 2. 너무 작은 해상도는 지원 불가. ex) iPhone 4..
// 3. 지원하는 대상 : 최신 아이폰 ~ 5년전 모델까지
// 지원하는 iOS : iOS 9 이상 생각한다.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

