//
//  DoneViewController.swift
//  Sign In App
//
//  Created by Charles Kopp on 5/16/19.
//  Copyright © 2019 Charles Kopp. All rights reserved.
//

import UIKit

class DoneViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetButton(_ sender: Any) {
        studentNumber = "NO-ID"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
