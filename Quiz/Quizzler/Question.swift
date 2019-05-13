//
//  Question.swift
//  Quizzler
//
//  Created by Ashish Gyawali on 5/11/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let question : String
    let answer : Bool
    
    init(text: String,correctAnswer: Bool)
    {
        question = text
        answer = correctAnswer
        
    }
}
