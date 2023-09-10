//
//  MySideMenuNavigationController.swift
//  sideMenu
//
//  Created by 이지현 on 2023/09/10.
//

import UIKit
import SideMenu

class MySideMenuNavigationController: SideMenuNavigationController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mySidemenu = self
        
        // 설정 변경
        self.menuWidth = 320
        self.leftSide = false
        self.presentationStyle = .menuSlideIn
        

    }
    


}
