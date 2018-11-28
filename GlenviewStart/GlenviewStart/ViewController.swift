//
//  ViewController.swift
//  GlenviewStart
//
//  Created by Noah Conroy on 10/9/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var imagesIndex = 0
    let imageNames = ["FirstImage", "SecondImage"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureImageView()
        imageView.image = UIImage(named: "FirstImage")
    }

    func configureImageView()
    {
        
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func scrollGesture(_ sender: UISwipeGestureRecognizer)
    {
        if imagesIndex == 0
        {
            imagesIndex = 1
        } else
        {
            imagesIndex = 0
        }
        print("Recognized Gesture!")
        
        imageView.image = UIImage(named: imageNames[imagesIndex])
    }
    
}

