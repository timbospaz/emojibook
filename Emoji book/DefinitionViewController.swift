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
    
    var emoji = Emoji()
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear: \(emoji.birthyear)"
        catagoryLabel.text = "Category: \(emoji.category)"
        defintionLabel.text = emoji.definition 
        
        
        
        
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
