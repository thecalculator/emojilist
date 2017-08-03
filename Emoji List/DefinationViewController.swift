//
//  DefinationViewController.swift
//  Emoji List
//
//  Created by Trilok Behere on 8/2/17.
//  Copyright © 2017 Tridev. All rights reserved.
//

import UIKit

class DefinationViewController: UIViewController {
    
    @IBOutlet weak var emojifrompage1: UILabel!
    var emoji = Emoji()
    
    @IBOutlet weak var desclabel: UILabel!
    
    @IBOutlet weak var catlable: UILabel!
    @IBOutlet weak var yearlable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        emojifrompage1.text = emoji.emo
        desclabel.text = emoji.defination
        catlable.text = emoji.category
        yearlable.text = String(emoji.year)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
