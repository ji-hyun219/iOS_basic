//
//  MyTabBarController.swift
//  Tabbar
//
//  Created by 이지현 on 2023/05/21.
//

import UIKit

class MyTabBarController: UITabBarController, UITabBarControllerDelegate { // delegate 추가!
    // UITabBarControllerDelegate 를 추가하면 탭바에서 이벤트가 발생했을 때, 이쪽으로 이벤트를 받을 수 있다.
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.myTabBar = self
        self.delegate = self
     
    }
    
    // 탭바 선택 시 이벤트 함수 호출
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("tabIndex:", tabBarController.selectedIndex)
        
        if tabBarController.selectedIndex == 1 || tabBarController.selectedIndex == 2 {
            appDelegate.fourthVC?.navigationController?.popViewController(animated: true)
        }
    }

}
