//
//  ViewController.swift
//  AutoLayout
//
//  Created by HAE on 2022/03/28.
//

import UIKit

class SampleController: UIViewController {

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

    @IBAction func openLockScreen(_ sender: Any) {
        
        openView(viewname: "LockScreenController")
        
    }
    
    @IBAction func openUIComp(_ sender: Any) {
        
        NSLog("Comp View")
        
        openView(viewname: "UICompController")
    }
    
    
    @IBAction func openTableView(_ sender: Any) {
        
        NSLog("Table View")
        
        openView(viewname: "TableViewController")
        
    }
}

