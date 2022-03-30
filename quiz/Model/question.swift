//
//  question.swift
//  quiz
//
//  Created by Goh Yuhan on 2022/03/31.
//

import Foundation

struct Question{
    let text:String
    let answer:String
    
    init(q:String, a:String){
        self.text = q
        self.answer = a
    }
}
