//
//  NvViewController2.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/13.
//

import UIKit

class NvViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! NvViewController3
        self.navigationController?.pushViewController(NewVC, animated: true)
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
