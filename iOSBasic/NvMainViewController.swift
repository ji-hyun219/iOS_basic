//
//  thirdViewController.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/13.
//

// 화면을 이동하는 방법 2가지
// 1. Navigation Controller 이용 <- 권장
// 코드로 이동(Push, Pop), Segue 로 이동
// 2. 팝업창으로 이동 : 간단한 이벤트 화면(로그인, 회원가입)
// 코드로 이동(Present, Dismiss), Segue 로 이동
// 1번은 수평이동, 2번은 수직이동
// 수직적인 이동은 간단히 떴다가 사라지는 화면으로 이해하면 좋다


// < 네비게이션 컨트롤러 뷰 관리 방법 >
// 다음 화면으로 이동하기
//  self.navigationController?.pushViewController
// 이전 화면으로 이동하기
//  popViewController
// 맨 앞으로 이동하기
//  popToRootViewController
// 특정번째 뷰로 이동하기 (2번째 3번째)
//  popToViewController(newVC, animated: true)
// 특정번째 뷰를 삭제할 때
//  navigationController?.viewControllers 배열에서 삭제, remove(at:)
// 특정뷰를 중간에 추가할 때
//  navigationController?.viewControllers 배열에서 추가. insert(at:)


import UIKit

class NvMainViewController: UIViewController {
    
    // Outlet 들어가는 곳

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // Action 함수 들어가는 곳
    
    // 네비게이션 컨트롤러에서 코드로 이동하기
    @IBAction func onBtnNext(_ sender: UIButton) {
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! NvViewController2
        self.navigationController?.pushViewController(NewVC, animated: true)
    }
}
