//
//  ViewController.swift
//  Jefferies-Demo
//
//  Created by Anthony Layne on 5/7/18.
//  Copyright © 2018 Wiggleroom LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var value1Textfield: UITextField!
    @IBOutlet weak var value2Textfield: UITextField!
    @IBOutlet weak var sumValueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if textField == value1Textfield {
            value2Textfield.becomeFirstResponder()
        } else if textField == value2Textfield {
            textField .resignFirstResponder()
        }

        guard let string1 = value1Textfield.text, let string2 = value2Textfield.text else {
            fatalError()
        }
        sumValueLabel.text = String.sum(string1, and: string2)

        return true
    }
}
