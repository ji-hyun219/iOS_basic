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
                          headers: ["Content-Type" :"application/x-www-form-urlencoded",
                                    "Accept" : "application/json" // 이 형태로 응답하기
                                   ]
        ).validate(statusCode: 200..<300)
            .responseJSON(completionHandler: { // 클로저
                response in print(response)
                
                // JSON 결괏값을 파싱해서 사용하자!
            })
        
        // Content-Type: api 연동시에 보내는 자원을 명시하기 위해 보통 사용
        // Message Body에 들어가는 타입을 HTTP Header에 명시해줄 수 있는데 이때 명시해줄 수 있도록 해주는 필드가 바로 Content Type
        // 그중에 Text타입으로는 text/css, text/javascript, text/html, text/plain 등이 있습니다.
        // 또 file을 실어보내기 위해서는 multipart/form-data가 있고 Application 타입으로는 application/json, application/x-www-urlencoded가 있습니다
        // application/x-www-form-urlencoded는 html의 form의 기본 Content-Type으로 요즘은 자주 사용하지 않지만 여전히 사용하는 경우가 종종 존재합니다.
        //        차이점은 application/json은 {key: value}의 형태로 전송되지만 application/x-www-form-urlencoded는 key=value&key=value의 형태로 전달된다는 점입니다.
        
        
        
        
    }
    
}

