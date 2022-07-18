//
//  SecondTableViewController.swift
//  TrendMedia
//
//  Created by 신승아 on 2022/07/18.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    @IBOutlet var talbeView: UITableView!
    
    var allSetting: [String] = ["공지사항", "실험실", "버전정보"]
    var personalSetting: [String] = ["개인보안", "알림", "채팅"]
    var help: [String] = ["고객센터/보안"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDesign()
        
    }
    
    // 빌드하면 왜 spearator 굵기가 다른건지 ..?
    func tableViewDesign() {
        talbeView.backgroundColor = .black
        tableView.separatorStyle = .singleLine
        talbeView.separatorColor = .systemGray
        talbeView.rowHeight = 50
    }
    
    
    // 섹션 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
   
    // 섹션 헤더
    // 헤더/푸터 폰트 디자인하는 법을 구글링해도 잘 모르겠어요... 색 밝게 하고 싶어요 ..!
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else if section == 2 {
            return "기타"
        } else {
            return ""
        }
    }
    
    // 각 섹션 별 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 3
        } else if section == 1 {
            return 3
        } else if section == 2{
            return 1
        } else {
            return 0
        }
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = allSetting[indexPath.row]
            
        } else if indexPath.section == 1 {
            cell.textLabel?.text = personalSetting[indexPath.row]
            
        } else if indexPath.section == 2 {
            cell.textLabel?.text = help[indexPath.row]
            
        }
        
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = .systemFont(ofSize: 15)
        cell.backgroundColor = .black
        return cell
        
    }
    
    
    
}
