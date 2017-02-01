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
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cooltableview.dataSource = self
        cooltableview.delegate  = self
        emojis = makeEmojiArray()
    
    
    
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // to take out highlighted cell
        tableView.deselectRow(at: indexPath, animated: true)
        // delete line above to re- highlight each cell
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender:emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let defVC = segue.destination as!  DefinitionViewController
        defVC.emoji = sender as! Emoji
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji] {
         let emoji1 = Emoji()
        emoji1.stringEmoji = "😊"
        emoji1.birthyear = 2010
        emoji1.category = "smiley"
        emoji1.definition = " A smiley face with a big smile"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthyear = 2011
        emoji2.category = "emoji"
        emoji2.definition = "a smelly pooh "
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😤"
        emoji3.birthyear = 2012
        emoji3.category = "emoji"
        emoji3.definition = "a windy face  "
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👮"
        emoji4.birthyear = 2014
        emoji4.category = "smiley"
        emoji4.definition = " A smiley policeman"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐰"
        emoji5.birthyear = 2015
        emoji5.category = "Animal"
        emoji5.definition = "a funnny bunny rabbit  "
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐺"
        emoji6.birthyear = 2012
        emoji6.category = "Animal"
        emoji6.definition = "a big wolf   "
        
        
       return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
        
        
    }

}

