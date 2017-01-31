//
//  DefinitionViewController.swift
//  Emoji book
//
//  Created by Timothy Sparrow on 25/01/2017.
//  Copyright © 2017 Timothy Sparrow. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var catagoryLabel: UILabel!
    
    @IBOutlet weak var defintionLabel: UILabel!
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EOJI"
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    
        emojiLabel.text = emoji
        
        if  emoji == "😊" { defintionLabel.text = "a Cute smiley "
            catagoryLabel.text = "Catagory: Smiley"
            birthYearLabel.text = "BirthYear:1967"

        }
        if  emoji == "💩" { defintionLabel.text = "a pile of pool  "
            catagoryLabel.text = "Catagory: poo"
            birthYearLabel.text = "BirthYear:1950"
        }
        if  emoji == "😤" { defintionLabel.text = "a grumpy man  "
            catagoryLabel.text = "Catagory: Windy"
            birthYearLabel.text = "BirthYear:1940"
        }
        if  emoji == "👮" { defintionLabel.text = "a happy police man  "
            catagoryLabel.text = "Catagory: Policeman"
            birthYearLabel.text = "BirthYear:1920"
        }
        if  emoji == "🐰" { defintionLabel.text = "whats up rabbit !  "
            catagoryLabel.text = "Catagory: Rabbit"
            birthYearLabel.text = "BirthYear:1956"
        }
        
        if  emoji == "🐺" { defintionLabel.text = "a wolfy wolf "
            catagoryLabel.text = "Catagory: Wolf"
            birthYearLabel.text = "BirthYear:1980"
        }
        
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
