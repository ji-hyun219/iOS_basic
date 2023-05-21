//
//  LoginViewController.swift
//  LoginJoin
//
//  Created by 이지현 on 2023/05/14.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        // 통신을 통해서 아이디/암호를 전달하고
        // 로그인 처리 결과를 받아온다
        let id = tfID.text
        let pw = tfPW.text
        
        // 예외처리: 아이디/암호 제대로 입력되었는지 확인
        if let safeId = id, let safePW = pw {
            // true: safeId, safePW 모두 nil 이 아님
            if safeId.count < 3 || safePW.count < 4 {
                print("아이디나 암호를 다시 입력하세요.")
                return
            }
            // 통신 생략..
            // 로그인 성공!
            appDelegate.userInfo.id = safeId
            appDelegate.userInfo.pw = safePW
            appDelegate.isLogin = true
            
            self.navigationController?.popViewController(animated: true)
        } else {
            print("ID나 PW가 nil입니다!")
        }
        
    }
    
    
    
}
