//
//  SecondViewController.swift
//  iOSBasic
//
//  Created by 이지현 on 2023/05/05.
//

import UIKit

// 딜리게이트 Delegate -> 프로토콜 Protocol (자바의 인터페이스와 비슷)
// 이벤트 전달자 : 이벤트 콜백 함수
// Delegate(대리자) : 프로토콜(이벤트 함수 구현 시 주로 사용함)

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var tvData: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // 텍스트 필드의 이벤트 처리자(대리자)는 나다!!
        // 이게 빠지면 이벤트가 생기지 않음
        tfData.delegate = self
      
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       print("return 버튼 누를 시 호출된다")
        print(textField.text!)
        return true
    }
    
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        print("텍스트 쓸 때마다 출력됨")
        tvData.text = textField.text!
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("글자 입력이 완료되면 한번 호출")
        print("키보드 완료버튼이나 포커스가 바뀜")
        return true
    }

    @IBAction func onSwitch(_ sender: UISwitch) {
        tvData.text = "스위치: " + String(sender.isOn)
    }
    
    
    @IBAction func onSegment(_ sender: UISegmentedControl) {
        tvData.text = "세그먼트: " + String(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            print("0이 출력")
        case 1:
            print("1이 출력")
        case 2:
            print("2이 출력")
        default:
            print("etc...")
        }
    }
}
