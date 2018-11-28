//
//  ViewController.swift
//  Light
//
//  Created by Noah Conroy on 9/27/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var lightOn = true

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    
    func updateUI()
    {
        if lightOn
        {
            view.backgroundColor = .white
        }
        else{
            view.backgroundColor = .black
        }
    }
    
}

