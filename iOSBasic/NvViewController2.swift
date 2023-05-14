//
//  NvViewController2.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/13.
//

import UIKit

class NvViewController2: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var secondData: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // 전역변수를 참조하여 출력함
        print(appDelegate.globalData)
        
        // 첫번째 화면에서 전달받은 데이터 출력
        print(self.secondData)
    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! NvViewController3
        self.navigationController?.pushViewController(NewVC, animated: true)
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
