//
//  ViewController.swift
//  IOSTextFieldChangeListenerExample
//
//  Created by Petho Alpar on 07/03/2017.
//  Copyright © 2017 Petho Alpar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelField: UILabel!
    @IBOutlet weak var uiTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiTextField.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldDidChange(_ textField: UITextField){
        self.labelField.text = textField.text
    }

}

