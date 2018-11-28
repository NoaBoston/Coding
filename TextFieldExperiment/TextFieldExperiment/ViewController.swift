//
//  ViewController.swift
//  TextFieldExperiment
//
//  Created by Noah Conroy on 9/20/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var newPickerView: UIPickerView!
    
    var newTaps = UIImpactFeedbackGenerator()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tapAction(_ sender: UIButton)
    {
        newTaps.impactOccurred()
    }
}

extension UIViewController: UIPickerViewDelegate
{
    private func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Hello"
    }
}

extension UIViewController: UIPickerViewDataSource
{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    
}


