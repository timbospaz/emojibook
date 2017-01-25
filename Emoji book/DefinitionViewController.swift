//
//  DefinitionViewController.swift
//  Emoji book
//
//  Created by Timothy Sparrow on 25/01/2017.
//  Copyright © 2017 Timothy Sparrow. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var defintionLabel: UILabel!
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EOJI"
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    
        emojiLabel.text = emoji
        
        if emoji == "😊" { defintionLabel.text = "a Cute smiley "

        }
        if emoji == "💩" { defintionLabel.text = "a pile of pool  "
            
        }
        if emoji == "😤" { defintionLabel.text = "a grumpy man  "
            
        }
        if emoji == "👮" { defintionLabel.text = "a happy police man  "
            
        }
        if emoji == "🐰" { defintionLabel.text = "whats up rabbit !  "
        }
        if emoji == "🐺" { defintionLabel.text = "a galloping horse  "
        }
        
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
