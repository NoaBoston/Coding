//
//  ViewController.swift
//  SimpleCenter
//
//  Created by Noah Conroy on 9/20/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK: Variables
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    // MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    // MARK: Actions
    @IBAction func gotoNextElement(_ sender: UIButton)
    {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count
        {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: UIButton)
    {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    func updateElement()
    {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}

