//
//  OutReasonsViewController.swift
//  Sign In App
//
//  Created by Charles Kopp on 4/16/19.
//  Copyright © 2019 Charles Kopp. All rights reserved.
//

import UIKit

class OutReasonsViewController: UIViewController {
    
    @IBOutlet weak var otherReasonTextField: UITextField!
    
    var otherReason:String = "NO-REASON"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func DoneOut(_ sender: Any) {
        let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "NO-ID")&reason=done&status=OUT")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
    }
    
    @IBAction func LunchOut(_ sender: Any) {
        let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "NO-ID")&reason=lunch&status=OUT")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
    }
    
    @IBAction func OtherOut(_ sender: Any) {
        if otherReasonTextField.text != nil{
            otherReason = otherReasonTextField.text!
            let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "NO-ID")&reason=\(otherReason)&status=OUT")!
            let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                guard let data = data else { return }
                print(String(data: data, encoding: .utf8)!)
            }
            task.resume()
            
            self.performSegue(withIdentifier: "outSegue", sender: nil)
        }
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
