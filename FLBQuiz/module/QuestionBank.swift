//
//  QuestionBank.swift
//  FLBQuiz
//
//  Created by Assaad Doumit on 9/3/20.
//  Copyright © 2020 Assaad Doumit. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseAuth



class QuestionBank{
    
class func importQuestion() {
     
   var ref: DatabaseReference!
    ref = Database.database().reference()
     var receivedQuestion = [String]()
     var correctAnswer = [String]()
    var optionsForAnswer = [String]()
     ref.child("Questions").observeSingleEvent(of: .value, with: { (snapshot) in
        guard let values = snapshot.value as? [[String:AnyObject]] else {
            print("Error")
            return
        }
        for i in 0...values.count - 1 {
        let question = values[i]["question"] as? String ?? ""
       let answer = values[i]["answer"] as? String ?? "error in answer"
        let options = values[i]["options"] as! [String]
        
//        let questionId = value?["qid"] as! Int as Int
       
//       print("\(question)")
        receivedQuestion.append(question)
        correctAnswer.append(answer)
            optionsForAnswer.append(contentsOf: options)
            
            
        }
        print(receivedQuestion)
        print(correctAnswer)
        print(optionsForAnswer)
     }
     ) { (error) in
         print(error.localizedDescription)
        
     }
   
    
}
    
}
