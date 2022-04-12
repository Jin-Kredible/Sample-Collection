//
//  SettingTableController.swift
//  AutoLayout
//
//  Created by HAE on 2022/04/08.
//

import UIKit

class SettingTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let topSec = ["정보"]
    let middleSec = ["키보드","게임 컨트롤러","서체","언어 및 지역", "사전"]
    let bottomSec = ["전송 또는 iPhone 재설정"]
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch(section) {
        case 0 :
            return topSec.count
        case 1 :
            return middleSec.count
        case 2 :
            return bottomSec.count
        default :
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableCell") as! SettingTableCell

        cell.accessoryType = .disclosureIndicator
        
        switch(indexPath.section) {
        case 0 :
            cell.IbContent.text = topSec[indexPath.row]
        case 1 :
            cell.IbContent.text = middleSec[indexPath.row]
            
            if indexPath.row == 2 {
                cell.IbContent.textColor = .gray
            }
        case 2:
            cell.IbContent.text = bottomSec[indexPath.row	]
        default : break
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)

        if(indexPath == [0,0]) {
            let storyBoard : UIStoryboard = UIStoryboard(name : "Main", bundle:nil)
            let controller = storyBoard.instantiateViewController(withIdentifier: "SettingInfoTableController")
            
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    
    
}



class SettingTableCell : UITableViewCell {
    
    @IBOutlet weak var IbContent: UILabel!
    
}



