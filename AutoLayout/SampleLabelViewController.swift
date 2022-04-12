//
//  SampleLabelViewController.swift
//  AutoLayout
//
//  Created by HAE on 2022/04/08.
//

import UIKit

class SampleLabelViewController : UIViewController {
    
    @IBOutlet weak var IbSample: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func testButton(_ sender: Any) {
        
        if let text = IbSample.text {
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray, .backgroundColor: UIColor.blue ]
        IbSample.attributedText = NSAttributedString.init(string:text, attributes: attributes)
            
        }
    }
    
}
