//
//  ViewController.swift
//  tableView
//
//  Created by 이지현 on 2024/01/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let name = ["스티븐 잡스", "빌 게이츠", "맥아더"]
    let age = ["59", "30", "70"]
    let city = ["sanbon", "anyang", "seoungsu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // numberOfRowsInSection : 테이블 뷰의 지정된 섹션에 있는 행 수를 반환하도록 데이터 소스에 지시
        return name.count
    }
    
    
    // dequeueReusableCell : 식별자로 찾은 후 재사용 가능한 테이블 뷰 셀 객체를 반환
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath) as! MyTestTableViewCell
        cell.nameLabel.text = name[indexPath.row]
        cell.ageLabel.text = age[indexPath.row]
        cell.cityLabel.text = city[indexPath.row]
        return cell
    }
    
    
}
