//
//  FourthViewController.swift
//  Tabbar
//
//  Created by 이지현 on 2023/05/21.
//

import UIKit

class FourthViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.fourthVC = self
     
    }

}
