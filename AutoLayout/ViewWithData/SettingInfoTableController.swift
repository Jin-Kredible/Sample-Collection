//
//  SettingInfoTableController.swift
//  AutoLayout
//
//  Created by HAE on 2022/04/12.
//

import UIKit


class SettingInfoTableController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    let topSec = [["이름","iPhone"], ["소프트웨어 버전","15.2"], ["모델명","iPhone 11"], ["모델번호","A2111"]]
    let middleSec = [["노래","0"],["비디오","0"],["사진","0"],["응용프로그램","0"],["전체공간","499.68GB"],["사용 가능 공간","213.02GB"]]
    let bottomSec = ["인증서 신뢰 설정"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingInfoCell") as! SettingInfoCell
        
        switch(indexPath.section) {
        case 0 :
            cell.title.text = topSec[indexPath.row][0]
            cell.subTitle.text = topSec[indexPath.row][1]
            cell.subTitle.textColor = .gray
        case 1 :
            cell.title.text = middleSec[indexPath.row][0]
            cell.subTitle.text = middleSec[indexPath.row][1]
            cell.subTitle.textColor = .gray
        case 2:
            cell.title.text = bottomSec[indexPath.row]
            cell.subTitle.text = nil
            cell.accessoryType = .disclosureIndicator
        default : break
        }


        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
  
    
    
}

class SettingInfoCell : UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var subTitle: UILabel!
    
}
