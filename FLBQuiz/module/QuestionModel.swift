//
//  File.swift
//  FLBQuiz
//
//  Created by Assaad Doumit on 9/2/20.
//  Copyright © 2020 Assaad Doumit. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct Questions {
    
    let questions : String
    let options1 :String
    let options2 :String
    let options3 :String
    let options4 :String
    let answer :String
    let questionID : Int
    
    init(question: String, correctAnswer: String ,option1 :String,option2 :String,option3 :String,option4 :String, id :Int){
        questions = question
        answer = correctAnswer
        options1 = option1
        options2 = option2
        options3 = option3
        options4 = option4
        questionID = id
    }
    
}
