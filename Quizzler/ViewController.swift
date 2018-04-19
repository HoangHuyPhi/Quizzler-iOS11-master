//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//
import AMProgressBar
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var progressBarTiming: AMProgressBar!
    //Place your instance variables here
    var pickedAnswer : Bool = false
    let allQuestion = QuestionBank()
    var questionNumber: Int = 0
    var score : Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    override func viewDidLoad() {
        setupProgressBar()
        super.viewDidLoad()
        let firstQuestion = allQuestion.list[0]
      questionLabel.text = firstQuestion.questionText
    }
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    func updateUI() {
        scoreLabel.text = "Score : \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressBarTiming.setProgress(progress: (1/13) * CGFloat(questionNumber), animated: true)
    }
    func nextQuestion() {
        if questionNumber <= 12 {
    questionLabel.text = allQuestion.list[questionNumber].questionText
        updateUI()
        }
        else {
        let alert = UIAlertController(title: "Awesome", message: "Perfect", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
           present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
           ProgressHUD.showSuccess("Success")
            score += 1
        }
        else {ProgressHUD.showError("Error")}
    }
    func setupProgressBar()
    {
        AMProgressBar.config.barColor = .blue
        AMProgressBar.config.barCornerRadius = 10
        AMProgressBar.config.barMode = .determined // .undetermined
        
        AMProgressBar.config.borderColor = .white
        AMProgressBar.config.borderWidth = 10
        
        AMProgressBar.config.cornerRadius = 10
        
        AMProgressBar.config.hideStripes = false
        
        AMProgressBar.config.stripesColor = .red
        AMProgressBar.config.stripesDelta = 80
        AMProgressBar.config.stripesMotion = .right // .none or .left
        AMProgressBar.config.stripesOrientation = .diagonalRight // .diagonalLeft or .vertical
        AMProgressBar.config.stripesWidth = 30
        AMProgressBar.config.textColor = .black
        AMProgressBar.config.textFont = UIFont.systemFont(ofSize: 12)
        AMProgressBar.config.textPosition = .onBar // AMProgressBarTextPosition
    }
    
    func startOver() {
      questionNumber = 0
       nextQuestion()
    }
    

    
}
