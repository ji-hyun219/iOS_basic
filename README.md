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
