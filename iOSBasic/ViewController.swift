//
//  ViewController.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/05.
//

import UIKit

class ViewController: UIViewController {

    
    // 아웃렛 변수가 들어가는 곳
    // Interface builder : Xcode에서 제공하는 GUI 기반의 앱 개발 도구
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 액션 함수가 들어가는 곳
    @IBAction func onBtn1Click(_ sender: UIButton) {
        print("btn1 !!")
    }
    @IBAction func onBtn2Click(_ sender: UIButton) {
        print("btn2 !!")
    }
    @IBAction func onBtn3Click(_ sender: UIButton) {
        print("btn3 !!")
    }
    
    
}

