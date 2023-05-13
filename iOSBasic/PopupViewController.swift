//
//  PopupViewController.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/13.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onBtnClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        // completion 은 팝업창 닫고 후에 실행할 코드가 있을 때 작성해준다
    }
}
