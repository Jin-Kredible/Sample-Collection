//
//  SampleViewController.swift
//  AutoLayout
//
//  Created by HAE on 2022/04/05.
//

import UIKit

class CustTableController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let sections = ["우량주", "성장주", "코인"]
    let arrImage = ["dollarsign.circle", "dollarsign.circle", "bitcoinsign.circle"]
    
    let arrWoo = ["삼성전자", "현대자동차", "LG생활건강"]
    let arrDescWoo = ["69,200", "177,500", "912,000"]

    let arrSung = ["LG에너지솔루션", "카카오뱅크", "셀트리온"]
    let arrDescSung = ["443,000", "50,200", "170,000"]

    let arrCoin = ["비트코인", "이더리움", "도지코인"]
    let arrDescCoin = ["56,891,000", "4,293,000", "184"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        switch(section) {
        case 0 :
            return arrWoo.count
        case 1 :
            return arrSung.count
        case 2 :
            return arrCoin.count
        default :
            return 0
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTableViewCell") as! SampleTableViewCell
        
        
        switch(indexPath.section) {
        case 0 :
            cell.IbTitle.text = arrWoo[indexPath.row]
            cell.IbSubTitle.text = arrDescWoo[indexPath.row]
        case 1 :
            cell.IbTitle.text = arrSung[indexPath.row]
            cell.IbSubTitle.text = arrDescSung[indexPath.row]
        case 2:
            cell.IbTitle.text = arrCoin[indexPath.row]
            cell.IbSubTitle.text =  arrDescCoin[indexPath.row]

        default : break
            
        }
        
        cell.IbImage.image = UIImage.init(systemName: arrImage[indexPath.section])
       
        
        cell.accessoryType = .disclosureIndicator
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
    
        return sections[section]
    }
    
    
    


    
}

class SampleTableViewCell : UITableViewCell {
    
    @IBOutlet weak var IbImage: UIImageView!
    @IBOutlet weak var IbTitle: UILabel!
    
    @IBOutlet weak var IbSubTitle: UILabel!
    
}

