//
//  ViewController.swift
//  lesson4.3
//
//  Created by Абдулла-Бек on 15/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterNumberTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBatton(_ sender: Any) {
        guard let enterNumber = enterNumberTextFild.text, !enterNumber.isEmpty
        else {
            enterNumberTextFild.layer.borderColor = UIColor.red.cgColor
            enterNumberTextFild.layer.borderWidth = 1
            enterNumberTextFild.placeholder = "Заполните, пожалуйста"
            return
        }
        
        let vc: ContactViewController = storyboard?.instantiateViewController(withIdentifier: "ContactViewController")
        as! ContactViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
