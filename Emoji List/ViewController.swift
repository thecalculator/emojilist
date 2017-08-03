//
//  ViewController.swift
//  Emoji List
//
//  Created by Trilok Behere on 8/2/17.
//  Copyright © 2017 Tridev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    
    @IBOutlet weak var tableview: UITableView!

    var emojis : [Emoji] = []
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tableview.dataSource = self
        tableview.delegate = self
        
        emojis = makeEmojiArry()
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        
        
        cell.textLabel?.text = emojis[indexPath.row].emo
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        tableview.deselectRow(at: indexPath, animated: true) // clears the selection of the row
        performSegue(withIdentifier: "page1to2", sender: emoji) //moves to second page
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //passing value from this page to second
         let defVC = segue.destination as! DefinationViewController
         defVC.emoji = sender as! Emoji
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArry() -> [Emoji]{
        
        
        let emo1 = Emoji()
        emo1.emo = "😀"
        emo1.defination = "Happy"
        emo1.year = 2007
        emo1.category = "Category : Smiley"
        
        let emo2 = Emoji()
        emo2.emo = "😎"
        emo2.defination = "Cool"
        emo2.year = 2008
        emo2.category = "Category : Smiley"
        
        let emo3 = Emoji()
        emo3.emo = "👺"
        emo3.defination = "Angry"
        emo3.year = 2009
        emo3.category = "Category : Smiley"
        
        let emo4 = Emoji()
        emo4.emo = "😳"
        emo4.defination = "Confused"
        emo4.year = 20010
        emo4.category = "Category : Smiley"
        
        let emo5 = Emoji()
        emo5.emo = "😷"
        emo5.defination = "No comments"
        emo5.year = 2011
        emo5.category = "Category : Smiley"
        
        let emo6 = Emoji()
        emo6.emo = "🤒"
        emo6.defination = "Sick"
        emo6.year = 2012
        emo6.category = "Category : Smiley"
        
        
        let emo7 = Emoji()
        emo7.emo = "🤖"
        emo7.defination = "Robot"
        emo7.year = 2013
        emo7.category = "Category : Electronics"
        
        return [emo1, emo2, emo3, emo4, emo5, emo6, emo7]
        
    }

}

