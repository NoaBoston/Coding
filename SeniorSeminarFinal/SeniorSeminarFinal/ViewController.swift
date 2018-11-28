//
//  ViewController.swift
//  SeniorSeminarFinal
//
//  Created by Noah Conroy on 10/15/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    struct attraction
    {
        var imageName: String
        var description: String
        var attractionName: String
    }
    
    var attractionArray: [attraction] = [attraction(imageName: "GlenviewGrind", description: "The Glenview Grind is a family owned coffee shop in downtown Glenview. It's a great place to work on homework or watch Netflix but don't expect it to be quiet.", attractionName: "Glenview Grind"), attraction(imageName: "DairyBar", description: "The Dairy Bar is a family owned soft-serve ice cream shop in downtown Glenview. It was formally a Dairy Queen. On opening night each season people camp outside so they can get their photo posted on the wall.", attractionName: "Dairy Bar"), attraction(imageName: "GlenviewLibrary", description: "The Glenview Library is a new building right near the train station. It's not just a dusty book vault, it also has spaces with computers or study rooms. Getting kicked out by security is a rite of passage for grade school students.", attractionName: "The Glenview Library"), attraction(imageName: "HenleyFloat", description: "Henley Street comes together every Fourth of July to build a floats. There's no theme, we've built everything from X-Wing fighters to Rootbeer Floats. There's supposed to be a rivalry between neighborhoods, but really there's no contest.", attractionName: "Rootbeer Float"), attraction(imageName: "TheGlen", description: "The Glen is Glenview's attempt at a walkable dowtown, unfortunately, it's hideously far away from any public transportation and parking is never open. However, if you can get there, it's a great place to walk around. You can see a movie, go to Starbucks, or do any number of other activities.", attractionName: "The Glen Town Center"), attraction(imageName: "WagnerFarm", description: "Wagner Farm is a unique farm that stills functions in the outskirts of Glenview. Run by the town itself, Wagner Farm is a tiny glimpse into the past and a great place to visit.", attractionName: "Historic Wagner Farm"), attraction(imageName: "Hackneys", description: "Hackney's is a staple of the North Shore, an Irish resturant/bar it hosts events year round. It also attracts many regulars, people who have been going to Hackney's for years.", attractionName: "Hackney's"), attraction(imageName: "AirStation", description: "The former site of the Glenview Naval Air Station has been redeveloped into The Glen Town Center, but Glenview was built around this naval base. In fact, planes in the Air and Water show used to take off from its runway.", attractionName: "Glenview Naval Air Station"), attraction(imageName: "JackmanPark", description: "Jackman Park is located in downtown Glenview, right by the Metra Train Station. It's the location of several annual events from concerts in park every summer Tuesday to the annual Phunrun that OLPH organizes.  It's also a place where kids hang out and moms take their toddlers to watch the trains.", attractionName: "Jackman Park")]

    
    var count: Int = 0

    @IBOutlet weak var attractionImage: UIImageView!
    
    @IBOutlet weak var attractionName: UILabel!
    
    @IBOutlet weak var attractionDescription: UILabel!
    
    override func viewDidLoad()
    {
        count = 0
        super.viewDidLoad()
        setUpNewImage(0)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func forwardAction(_ sender: UIButton)
    {
        count += 1
        setUpNewImage(count)
    }
    
    @IBAction func backwardAction(_ sender: UIButton)
    {
        count -= 1
        setUpNewImage(count)
    }
    
    @IBAction func randomAction(_ sender: UIButton)
    {
        count = Int.random(in: 0 ... attractionArray.count)
        setUpNewImage(count)
    }
    
    func setUpNewImage(_ inputInt: Int)
    {
        if inputInt < attractionArray.count && inputInt > -1
        {
            attractionName.text = attractionArray[inputInt].attractionName
            attractionDescription.text = attractionArray[inputInt].description
            attractionImage.image = UIImage(named: attractionArray[inputInt].imageName)
        }
        else if inputInt < 0
        {
            count = attractionArray.count - 1
            attractionName.text = attractionArray[count].attractionName
            attractionDescription.text = attractionArray[count].description
            attractionImage.image = UIImage(named: attractionArray[count].imageName)
        }
        else
        {
            count = 0
            attractionName.text = attractionArray[count].attractionName
            attractionDescription.text = attractionArray[count].description
            attractionImage.image = UIImage(named: attractionArray[count].imageName)
        }
    }
    
}

