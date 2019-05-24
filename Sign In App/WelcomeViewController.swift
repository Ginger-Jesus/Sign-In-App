//
//  WelcomeViewController.swift
//  Sign In App
//
//  Created by Charles Kopp on 3/19/19.
//  Copyright © 2019 Charles Kopp. All rights reserved.
//
public var studentNumber:String?

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var manualEntryTextField: UITextField!
    @IBOutlet weak var cameraButton: UIButton!
    
    
    override func viewDidLoad() {
        cameraButton.imageView?.contentMode = .scaleAspectFit
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func manualEntryButton(_ sender: Any) {
        studentNumber = manualEntryTextField.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
}
