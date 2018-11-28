//
//  ViewController.swift
//  IBBasics
//
//  Created by Noah Conroy on 9/26/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var newButton: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        newButton.text = "I'm learning how to make really awesome apps!"
        newButton.textAlignment = .center
        newButton.numberOfLines = 2
        myButton.setTitle("Press", for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

