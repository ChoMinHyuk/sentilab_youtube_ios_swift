//
//  ViewController.swift
//  sentiTable
//
//  Created by sentilab on 2019/11/26.
//  Copyright © 2019 sentilab. All rights reserved.
//

import UIKit

//tableview 테이블로 된 뷰 - 여러개의 행이 모여있는 목록 뷰(화면)
//정갈하게 보여줄려고~ 전화번호부

//1. 데이터 무엇? - 전화번호부 목록
//2. 데이터 몇개? - 100, 1000, 10000
//3.(옵션) 데이터 행 눌렀다! - 클릭
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableViewMain: UITableView!
    
    //셀을 반복할 횟수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //몇개? 숫자
        return 100
    }
    
    //위의 numberOfRowsInSection 숫자 만큼 반복
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //1번 방법 - 임의의 셀 만들기 : 연습
//        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
//        cell.textLabel?.text = "\(indexPath.row)"
        
        //2번 방법 - 스토리보드 + id : 실전
        //as? as! - 부모 자식 친자확인
        //as? : 이거 맞아?
        //as! : 이거 맞아!
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        cell.LabelText.text = "\(indexPath.row)"
        
        return cell
        
    }
    
    //옵션 - 클릭 감지
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("CLICK !!! \(indexPath.row)")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
    }

    
    

}

