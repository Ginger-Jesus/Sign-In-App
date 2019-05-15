//
//  InReasonsViewController.swift
//  Sign In App
//
//  Created by Charles Kopp on 3/19/19.
//  Copyright © 2019 Charles Kopp. All rights reserved.
//

import UIKit

class InReasonsViewController: UIViewController{


    
    @IBOutlet weak var reasonsPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LateIn(_ sender: Any) {
        
        let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "1234")&reason=late&status=IN")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()

    }
    
    @IBAction func LunchIn(_ sender: Any) {
        let url = URL(string: "https://xrds-data-site.appspot.com/checkout/checkout?id=\(studentNumber ?? "1234")&reason=lunch&status=IN")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
    }
    
    
    
    
    var signInReasons:[String] = ["Late", "Lunch", "Appointment", "Traffic", "Free Period"]
    var signOutReasons:[String] = ["Free Period", "Done", "Appointment"]
    
   
    
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
