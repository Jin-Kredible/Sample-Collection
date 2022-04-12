//
//  UICompController.swift
//  AutoLayout
//
//  Created by HAE on 2022/04/05.
import UIKit

class UICompController: UIViewController {

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
    
    
    @IBAction func openLabel(_ sender: Any) {
        
        openView(viewname: "SampleLabelViewController")
    }
    
  
}

