//
//  JoinViewController.swift
//  LoginJoin
//
//  Created by 이지현 on 2023/05/14.
//

import UIKit

class JoinViewController: UIViewController {
    
    
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func onBtnJoin(_ sender: UIButton) {
        // 약관동의 여부 확인
        if appDelegate.isAgree == false {
            print("약관동의를 해주세요")
            return
        }
        
        let id = tfID.text
        let pw = tfPW.text
        let name = tfName.text
        let phone = tfPhone.text
        
        // 예외처리 - 사용할만한 데이터인지 확인
        if let safeID = id, let safePW = pw, let safeName = name, let safePhone = phone {
            
            if (safeID.count < 3) {
                print("아이디를 입력해주세요")
                return
            }
            
            if (safePW.count < 4) {
                print("비밀번호를 입력해주세요")
                return
            }
            
            if (safeName.count < 2) {
                print("이름을 입력해주세요")
                return
            }
            
            if (safePhone.count < 8) {
                print("폰번호를 입력해주세요")
                return
            }
            
            // 서버와 통신 생략!
            appDelegate.userInfo.id = safeID
            appDelegate.userInfo.pw = safePW
            appDelegate.userInfo.name = safeName
            appDelegate.userInfo.phone = safePhone
            print("회원가입되었습니다!")
            
            self.navigationController?.popViewController(animated: true)
            
        } else {
            print("ID, PW, Name, Phone 중 nil 값 존재.")
        }
        

    }
    

 
}
