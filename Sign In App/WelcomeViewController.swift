//
//  ScannerButtonViewController.swift
//  Sign In App
//
//  Created by Charles Kopp on 3/19/19.
//  Copyright © 2019 Charles Kopp. All rights reserved.
//


import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
