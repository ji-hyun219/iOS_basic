# iOS_basic

UIKit을 이용한 iOS 앱 제작

<img width="895" alt="스크린샷 2023-05-05 오후 5 35 34" src="https://user-images.githubusercontent.com/91349474/236414876-3aff7f7f-6615-43c1-affe-f562eb8ae22d.png">

<br />
☝️ assistant 누르면 ViewController 파일이 뜸
<br />
<br />
<br />

<img width="724" alt="스크린샷 2023-05-05 오후 5 40 14" src="https://user-images.githubusercontent.com/91349474/236414917-6b1d8588-2ca8-4609-87e2-c733d5019aab.png">

<br />
☝️ type 을 UIButton 으로 지정
<br />
<br />
<br />

<img width="261" alt="스크린샷 2023-05-05 오후 5 45 12" src="https://user-images.githubusercontent.com/91349474/236414934-358fe748-d424-4c56-b7ac-2c973c7d658b.png">

<br />
☝️ 메인 스토리보드에 ViewController 를 누르고 상단에 해당 버튼 누르면 버튼 연결 조작 가능
<br />
<br />
<br />

---

👇 File > New > File > Cocoa Touch Class 에서 SecondViewController 생성❗️

<br />

<img width="724" alt="스크린샷 2023-05-05 오후 9 14 36" src="https://user-images.githubusercontent.com/91349474/236457708-d516e6e6-8fa8-413a-9e14-89cfa7cdafeb.png">

<br />
<br />
<br />

👇 그 다음 스토리보드에서 아이콘 누른 뒤 "show the identity inspector" 클릭해서 다음과 같이 SecondViewController 설정

<br />

<img width="263" alt="스크린샷 2023-05-05 오후 9 30 10" src="https://user-images.githubusercontent.com/91349474/236457928-72ed7447-86fa-4951-8395-a0e6df052ed7.png">

<br />

---

## Auto Layout 에 대해 알아보자!

실습해본 결과, Auto Resizing 에 비해 좀 더 깐깐하게 배치를 잡는 느낌이다.

<br />

<img width="153" alt="스크린샷 2023-05-30 오후 9 35 21" src="https://github.com/ji-hyun219/ji-hyun219/assets/91349474/e376cacc-3423-4e20-8115-c2c00c2952ba">

위에서 세번째 버튼을 눌러서 조정

<br />
<br />
<br />

<img width="306" alt="스크린샷 2023-05-30 오후 9 31 44" src="https://github.com/ji-hyun219/ji-hyun219/assets/91349474/6ebc448e-c9ab-4ef0-90aa-426918f3cf95">

- Leading 은 왼쪽, Trailing 은 오른쪽 margin 을 잡는다.
- Center Horizontally : 수평 기준 가운데
- Center Vertially : 수직 기준 가운데
- Equal Widths : 화면 해상도가 바껴도 고정
- Equal Heights : 화면 해상도가 바껴도 고정

<br />
<br />
<br />

### 예제1

<img width="551" alt="스크린샷 2023-05-30 오후 9 45 57" src="https://github.com/ji-hyun219/ji-hyun219/assets/91349474/3976e733-5423-474f-8ad3-136cef3b066e">

<br />
<br />
<br />

### 예제2

<img width="309" alt="스크린샷 2023-05-30 오후 9 52 39" src="https://github.com/ji-hyun219/ji-hyun219/assets/91349474/defb7232-5494-4887-b1d7-094fac3a0d24">

- Equal Widths, Equal Heights 를 지정할 경우, 비율을 정할 수 있다.
- 만약 화면에서 너비가 70% 만큼 차지하고 싶다면 Muliplier 속성을 0.7 로 조정

<br />
<br />
<br />

### 예제3

<img width="511" alt="스크린샷 2023-05-30 오후 9 57 53" src="https://github.com/ji-hyun219/ji-hyun219/assets/91349474/c5b02394-14b4-4169-a285-c9538d0c8cc8">

<br />
<br />
<br />

---

### 서드파티 라이브러리 사용
1. 반드시 현재 프로젝트 닫고, Pod init (Pod init 을 안하면 No Podfile.. 에러가 뜸)
2. 닫은 상태에서 pod install -> Podfile.lock 생성된 것 확인
3. 터미널에서 `open 프로젝트이름.xcworkspace`
4. 라이브러리 작성 후 터미널에서 pod install

<br />

---

### extension
- extension 을 쓰는 이유는 외부 라이브러리나 프레임워크를 가져다 사용했다면 원본 소스를 수정하지 못한다.
- 이처럼 외부에서 가져온 타입에 내가 원하는 기능을 추가하고자 할 때 익스텐션을 사용한다.
- 타입에 새로운 기능을 추가할 수는 있지만, 기존 새로운 기능을 재정의(override) 할 수는 없다.

```swift
extension 확장할 타입이름 {
     //타입에 추가될 새로운 기능 구현
}
```

<br />

```swift
extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3 {
     //프로토콜 요구사항 구현
}
```
<br />

```swift
extension Double {
		// 인스턴스 자신에 1000 곱하기
    var km: Double { return self * 1_000.0 }  
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
// 1인치는 0.0254 미터"
print("1인치는 \(oneInch) 미터")      

let threeFeet = 3.ft
// 3피트는 0.914399970739201 미터"
print("3피트는 \(threeFeet) 미터")   
```

<br />
<br />
<br />

---
### SwiftyJSON

```swift
.responseJSON(completionHandler: { // 클로저
                (response) in
                print(response)
                
                // JSON 결괏값을 파싱해서 사용하자!
                self.parseJson(response) // 클로저에서 외부 변수 및 함수 접근 시, self 사용 (아래 바로 parseJson 참고)
            })
```

```swift
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
```
- 클로저의 외부 함수 접근은 self. 로 접근해야 한다
- underscore 를 쓰면 namedparameters 를 안쓴다는 뜻

<br />

```swift
if let json = try? JSON(data: response.data!) {
                    let result = json["login_result"]["result"].string
                    print(result!)
                    self.textview.text.append("\n\(result!)")

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
```

- try? 는 오류를 반환하면 nil 로 리턴한다는 뜻이다.
- if let 과 guard let 의 차이



