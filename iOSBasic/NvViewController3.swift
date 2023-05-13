//
//  NvViewController3.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/13.
//

import UIKit

class NvViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
