//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Noah Conroy on 10/9/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton)
    {
        print("Button was tapped!")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch)
    {
        if sender.isOn
        {
            print("Switch is on!")
        }
        else if !sender.isOn
        {
            print("The switch is off!")
        }
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField)
    {
        if let text = sender.text
        {
            print(text)
            sender.text = ""
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField)
    {
        if let text = sender.text
        {
            print(text)
        }
    }
}

