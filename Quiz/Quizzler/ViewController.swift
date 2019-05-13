//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    var pick : Bool = false
    var questionnumber : Int = 0
    let allQuestion = QuestionBank()
    var score: Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score: 0"
     //  progressLabel.text = "1/13"
      //  progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(1)
        let first = allQuestion.list[questionnumber]
        questionLabel.text = first.question
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pick = true
        }
        else if sender.tag == 2{
            
            pick = false
        }
        checkAnswer()
       questionnumber = questionnumber + 1
        
     //  questionLabel.text = allQuestion.list[questionnumber].question
       nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(String(score + 1))"
        
        progressLabel.text = "\(questionnumber + 1)/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionnumber + 1 )
        
    }
    

    func nextQuestion() {
        if questionnumber <= 12{
            questionLabel.text = allQuestion.list[questionnumber].question
            
            
        }
        else {
            let alert = UIAlertController(title: "ALERT", message: "You have fished the quiz", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
                })
            alert.addAction(restart)
             present(alert,animated: true, completion: nil)
            
            
            }
    }
    
    
    func checkAnswer() {
        
        let correctanswer = allQuestion.list[questionnumber].answer
        updateUI()
        if correctanswer == pick {
            
            
            ProgressHUD.showSuccess("correct")
            score = score + 1
           // print ("right answer")
            
        }
        else{
            ProgressHUD.showError("Fail")
          //  print ("wrong answer")
           
        }
        
    }
        
    
    
    
    func startOver() {
        score = 0
        questionnumber = 0
        nextQuestion()
       
    }
    
}
    

