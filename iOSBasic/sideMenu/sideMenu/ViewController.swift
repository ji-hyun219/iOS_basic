//
//  ViewController.swift
//  sideMenu
//
//  Created by 이지현 on 2023/09/10.
//

import UIKit

class ViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mainVC = self
    }
    
    func gotoLoginView() {
        // 네비게이션 컨트롤러로 이동하기
        let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    func gotoNoticeView() {
        // 네비게이션 컨트롤러로 이동하기
        let NoticeVC = self.storyboard?.instantiateViewController(withIdentifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(NoticeVC, animated: true)
        
    }


}

