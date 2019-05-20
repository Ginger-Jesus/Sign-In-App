//
//  InReasonsViewController.swift
//  Sign In App
//
//  Created by Charles Kopp on 3/19/19.
//  Copyright © 2019 Charles Kopp. All rights reserved.
//

import UIKit

class InReasonsViewController: UIViewController{

    var otherReason:String = "NO-REASON"
    
    @IBOutlet weak var otherReasonTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "REASON"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LateIn(_ sender: Any) {
        
        let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "NO-ID")&reason=late&status=IN")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()

    }
    
    @IBAction func LunchIn(_ sender: Any) {
        let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "NO-ID")&reason=lunch&status=IN")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
    }
    
    @IBAction func OtherIn(_ sender: Any) {
        if otherReasonTextField.text != nil{
            otherReason = otherReasonTextField.text!
            let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "NO-ID")&reason=\(otherReason)&status=IN")!
            let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                guard let data = data else { return }
                print(String(data: data, encoding: .utf8)!)
            }
            task.resume()
            
            self.performSegue(withIdentifier: "inSegue", sender: nil)
        }
    }
    
    
   
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        label.text = reasons[row]
//    }
//    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
