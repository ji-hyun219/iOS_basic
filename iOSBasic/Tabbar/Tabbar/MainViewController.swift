//
//  ViewController.swift
//  Tabbar
//
//  Created by 이지현 on 2023/05/21.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print("tabIndex: ", self.tabBarController?.selectedIndex)
        // 위 출력 시, tabIndex 가 이상한 값이 나오는 이유
        // >> 뷰가 정렬되고 있는데 시간이 걸리기 때문
        // >> viewDidAppear 에다가 출력!
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let index = self.tabBarController?.selectedIndex {
            print("tabIndex:", index)
        } else {
            print("nil")
        }
    }

    
    @IBAction func onBtnNext(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    
}

