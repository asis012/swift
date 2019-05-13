//
//  ViewController.swift
//  music
//
//  Created by Ashish Gyawali on 4/3/19.
//  Copyright © 2019 Ashish Gyawali. All rights reserved.
//

import UIKit
import GameplayKit
class ViewController: UIViewController {
    

    
   
    @IBOutlet weak var Leftimageview: UIImageView!
    
    @IBOutlet weak var Rightimageview: UIImageView!
    
    
    
    @IBOutlet weak var Player: UILabel!
    
    @IBOutlet weak var CPU: UILabel!
    var leftscore = 0
    var rightscore = 0
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
 
    
    @IBAction func Buttoon(_ sender: Any) {
//        print("ok")
        
        let leftnumber = Int(arc4random_uniform(12))+2
        let rightnumber = Int(arc4random_uniform(12))+2
      //   print(rightnumber)
        
        
        Leftimageview.image = UIImage(named: "card\(leftnumber)")
        
        Rightimageview.image = UIImage(named: "card\(rightnumber)")
        
        if(leftnumber>rightnumber)
        {
            leftscore += 1
            Player.text = String(leftscore)
        }
        else  if(rightnumber>leftnumber){
            rightscore += 1
          CPU.text = String(rightscore)
        }
        
    }
    
}

