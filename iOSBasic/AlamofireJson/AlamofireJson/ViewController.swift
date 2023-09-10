//
//  ViewController.swift
//  AlamofireJson
//
//  Created by 이지현 on 2023/07/30.


import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onBtnRequest(_ sender: UIButton) {
        sendRequest()
    }
    
    func sendRequest() {
        // POST 방식
        let parameter: Parameters = [  // Parameters 타입은 Alamofire 에 정의되어 있음
            "user_id" : "jihyun",
            "user_pw" : "1234"
        ]
        let url: String = "http://nissisoft21.dothome.co.kr/login_test.php"
        
        Alamofire.request(url, method: .post, parameters: parameter, encoding: URLEncoding.httpBody,
                          headers: ["Content-Type" :"application/x-www-form-urlencoded", // 보낼 때
                                    "Accept" : "application/json" // 이 형태로 응답 받기
                                   ]
        ).validate(statusCode: 200..<300)
            .responseJSON(completionHandler: { // 클로저
                (response) in
                print(response)
                
                // JSON 결괏값을 파싱해서 사용하자!
                self.parseJson(response) // 클로저에서 외부 변수 및 함수 접근 시, self 사용
            })
    }
        
        // Content-Type: api 연동시에 보내는 자원을 명시하기 위해 보통 사용
        // Message Body에 들어가는 타입을 HTTP Header에 명시해줄 수 있는데 이때 명시해줄 수 있도록 해주는 필드가 바로 Content Type
        // 그중에 Text타입으로는 text/css, text/javascript, text/html, text/plain 등이 있습니다.
        // 또 file을 실어보내기 위해서는 multipart/form-data가 있고 Application 타입으로는 application/json, application/x-www-urlencoded가 있습니다
        // application/x-www-form-urlencoded는 html의 form의 기본 Content-Type으로 요즘은 자주 사용하지 않지만 여전히 사용하는 경우가 종종 존재합니다.
        //        차이점은 application/json은 {key: value}의 형태로 전송되지만 application/x-www-form-urlencoded는 key=value&key=value의 형태로 전달된다는 점입니다.
        
        
        func parseJson(_ response: DataResponse<Any>) {
        //  _ (underscore)는 Swift에서 함수 또는 메서드의 매개변수에 대한 외부 이름(external parameter name)을 제공하지 않기 위해 사용됩니다.
            
        // Swift에서 함수나 메서드를 정의할 때, 각 매개변수는 내부 이름(internal parameter name)과 외부 이름(external parameter name)을 가질 수 있습니다. 외부 이름은 함수나 메서드를 호출할 때 사용되며, 내부 이름은 함수나 메서드의 본문 내에서 해당 매개변수를 참조할 때 사용됩니다
            
        // ex1
//            func greet(name: String, age: Int) {
//                print("Hello, \(name)! You are \(age) years old.")
//            }
//
//            greet(name: "Alice", age: 30)
            
            
        // ex2
//            func greet(_ name: String, age: Int) {
//                print("Hello, \(name)! You are \(age) years old.")
//            }
//
//            greet("Alice", age: 30)

            switch response.result {
            case .success(_) :
                // SwitfyJson 라이브러리를 이용하여, JSON 을 파싱하여 사용함
                if let json = try? JSON(data: response.data!) {
                    let result = json["login_result"]["result"].string
                    print(result!)
                    self.textview.text.append("\n\(result!)")
                    
                    let message = json["login_result"]["message"].string
                    print(message!)
                    self.textview.text.append("\n\(message!)")
                    
                    let login_return = json["login_result"]["login_data"]["return"].string
                    print(login_return!)
                    self.textview.text.append("\n\(login_return!)")
                    
                    let login_message = json["login_result"]["login_data"]["message"].string
                    print(login_message!)
                    self.textview.text.append("\n\(login_message!)")
                }
                
//       try? ->   오류 발생시 nil 반환: try?를 사용하면 함수나 메서드에서 오류가 발생하면 해당 함수나 메서드는 nil을 반환합니다. 이를 통해 성공적으로 완료된 경우와 오류 발생 경우를 옵셔널 바인딩 (if let 또는 guard let)을 통해 간단하게 구분할 수 있습니다.
                
//                여기서 try?를 사용하면 JSON(data:) 초기화자에서 오류가 발생할 경우 json은 nil이 됩니다. 따라서 if let 구문 내부의 코드는 오류가 발생하지 않았을 때만 실행됩니다. 오류가 발생하면 if let 내부의 코드는 실행되지 않습니다.
                
                
                
                // < if let 과 guard let 의 차이 >
//                func exampleFunction(optionalValue: String?) {
//                    // if let 사용
//                    if let value = optionalValue {
//                        print("Value is \(value)")
//                    }
//
//                    // guard let 사용
//                    guard let guardedValue = optionalValue else {
//                        print("No value found!")
//                        return
//                    }
//                    print("Guarded value is \(guardedValue)")
//                }
                
//                if let: 옵셔널이 nil이 아닌 경우, if let 내부의 코드 블럭이 실행됩니다. 옵셔널이 nil인 경우, 해당 블럭을 건너뜁니다.
//                guard let: 옵셔널이 nil인 경우, else 절이 실행되고 현재 범위(scope)에서 빠져나오게 됩니다. (예: 함수에서 return, 루프에서 break 등)

                
                
                break
            case .failure(_) :
                print("통신을 실패함", String(describing: response.result.error))
                break
            }
        }
        
    }
    

