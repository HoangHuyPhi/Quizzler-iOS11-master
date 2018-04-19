//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Phi Hoang Huy on 3/9/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//
import Foundation
class QuestionBank {
    var list = [Question] ()
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "iOS stands for iPhone Operating System.", correctAnswer: true)
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "IBAction is a type qualifier used by IB to enable connection user experience elements and app code.", correctAnswer: true))
        
        list.append(Question(text: "You use optional binding to find out whether an optional contains a value.", correctAnswer: true))
        
        list.append(Question(text: "An enumeration defines a common type for a group of related values.", correctAnswer: true))
        
        list.append(Question(text: "Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc", correctAnswer: true))
        
        list.append(Question(text: "You can use Java programming language in Xcode to make app", correctAnswer: false))
        
        list.append(Question(text: "Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks", correctAnswer: true))
        
        list.append(Question(text: "Spritekit is a 3D game frameworks", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Tim Cook is now a CEO of Apple ", correctAnswer: true))
        
        list.append(Question(text: "You can change the value of constant", correctAnswer: false))
        
        list.append(Question(text: "OOP in programing stands for Out of Print", correctAnswer: false))
        
        list.append(Question(text: "a class is like a blueprint of the object", correctAnswer: true))
    }
}
