//
//  TableViewController.swift
//  TableView
//
//  Created by HAE on 2022/04/04.
//

import UIKit

class TableViewController: UITableViewController {

    let section = ["커피","샌드위치","디저트"]
    
    let arrWoo = ["이디야","스타벅스","할리스"]
    let arrSung = ["서브웨이","퀴즈노즈","고샌드위치"]
    let arrCoin = ["마들렌","피낭시에","와플"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        switch(section) {
        case 0 :
            return arrWoo.count
        case 1:
            return arrSung.count
        case 2:
            return arrCoin.count
        default :
            return 0
        }

    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection sections: Int) -> Int {
//        for val in 0..<(section.count-1) {
//            return section[val].count
//        }
//        return 0
//    }
//
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
      
        
        switch (indexPath.section) {
        case 0:
            content.text = arrWoo[indexPath.row]
        case 1:
            content.text = arrSung[indexPath.row]
        case 2 :
            content.text = arrCoin[indexPath.row]
        default :
            NSLog("error")
        }
        
        content.image = UIImage.init(systemName: "lock.fill")
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection sections: Int) -> String? {
        return section[sections]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    

}
