//
//  ViewController.swift
//  textTest23
//
//  Created by CARL SHOW on 8/31/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var officializeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        text1.delegate = self
        text2.delegate = self
        officializeButton.layer.borderWidth = 1
        officializeButton.layer.cornerRadius = 5
        label1.layer.borderWidth = 3
        label1.layer.cornerRadius = 5
    }
    @IBAction func onClick(_ sender: Any)
    {
        let quickRefName = text1.text!
        let quickRefAge = text2.text!
        label1.text = "User \( String(describing: quickRefName)) has been added at age \(String(describing: quickRefAge))"
        text1.resignFirstResponder()
        text2.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text1.resignFirstResponder()
        text2.resignFirstResponder()
        return true
    }
}

