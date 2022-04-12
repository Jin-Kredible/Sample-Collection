//
//  ViewDataController.swift
//  AutoLayout
//
//  Created by HAE on 2022/04/07.
//

import UIKit

class ViewDataController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func openView(viewname: String) {
        NSLog("Comp View")
        let storyBoard : UIStoryboard = UIStoryboard(name : "Main", bundle:nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "\(viewname)")
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func openCustomTable(_ sender: Any) {
        
        openView(viewname: "CustTableController")
    }
    
    @IBAction func openBasicTable(_ sender: Any) {
        
        openView(viewname: "TableViewController")
    }
    
    @IBAction func openSettingTable(_ sender: Any) {
        
        openView(viewname: "SettingTableController")
    }
    
    
}
