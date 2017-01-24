//
//  ViewController.swift
//  Emoji book
//
//  Created by Timothy Sparrow on 24/01/2017.
//  Copyright © 2017 Timothy Sparrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UITableViewDataSource,
    UITableViewDelegate {

    @IBOutlet weak var cooltableview: UITableView!
    
    var emojis = ["😊","💩","😤","👮","🐰","🐺"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cooltableview.dataSource = self
        cooltableview.delegate  = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

