//
//  ViewController.swift
//  Lock Screen
//
//  Created by HAE on 2022/04/04.
//

import UIKit

class LockScreenController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var clockUi: UILabel!
    @IBOutlet weak var cameraView: UIImageView!
    @IBOutlet weak var lockImg: UIImageView!
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        
        
        let cameraTap = UITapGestureRecognizer(target: self, action: #selector(openCamera))
        cameraView.isUserInteractionEnabled = true
        cameraView.addGestureRecognizer(cameraTap)
        
        let locktap = UITapGestureRecognizer(target: self, action: #selector(unlock))
        lockImg.isUserInteractionEnabled = true
        lockImg.addGestureRecognizer(locktap)
        
    }
    
    @objc func tick() {
        clockUi.text = DateFormatter.localizedString(from: Date(),
                                                     dateStyle: .none,
                                                     timeStyle: .short)
        }
    

    @IBAction func openCamera(sender: AnyObject){

        if UIImagePickerController.isSourceTypeAvailable(.camera) {
                var imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .camera;
                imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        } else {
            print("Hello World")
        }
    }
    
    @IBAction func unlock(sender: AnyObject){
        
        if(lockImg.image == UIImage(systemName: "lock.fill")){
            lockImg.image = UIImage(systemName: "lock.open.fill")
            
        } else {
            lockImg.image = UIImage(systemName: "lock.fill")
        }
  
    }
    

}


