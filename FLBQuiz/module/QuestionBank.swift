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
    
//     let userID = Auth.auth().currentUser?.uidrx
     ref.child("Questions").observeSingleEvent(of: .value, with: { (snapshot) in
       // Get user value
        let value = snapshot.value as? [String:AnyObject]
       let question = value?["question"] as? String ?? "error in question"
       let asnwer = value?["answer"] as? String ?? "error in answer"
        let options = (value?["options"] as! [String])
        let questionId = value?["qid"] as! Int as Int
       print("\(question)")
       }) { (error) in
         print(error.localizedDescription)
        
     }
   
}
    
}
