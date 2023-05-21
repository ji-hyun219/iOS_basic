//
//  AgreeViewController.swift
//  LoginJoin
//
//  Created by 이지현 on 2023/05/14.
//

import UIKit

class AgreeViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 스위치 같은 경우, 아웃렛 변수로 빼는 것보다
    // 액션함수로 빼는 것이 더 좋음 -> sender 값으로 이용 가능하기 때문
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            appDelegate.isAgree = true
        } else {
            appDelegate.isAgree = false
        }
    }
    
    @IBAction func onBtnDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
