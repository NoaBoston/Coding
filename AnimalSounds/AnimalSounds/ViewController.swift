//
//  ViewController.swift
//  AnimalSounds
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
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK: Variables
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")
    
    // MARK: Outlets
    @IBOutlet weak var animalSoundLabel: UILabel!
    
    // MARK: Actions
    @IBAction func catButtonTapped(_ sender: UIButton)
    {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: UIButton)
    {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: UIButton)
    {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
}

