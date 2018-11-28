//
//  ViewController.swift
//  KeyboardExperiment
//
//  Created by Noah Conroy on 10/26/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureTextField(textField: InputText)
    }

    
    @IBOutlet weak var InputText: UITextField!
    
    func configureTextField(textField: UITextField)
    {
        textField.autocapitalizationType = .allCharacters
        
        textField.autocorrectionType = .no
        
    }
}

