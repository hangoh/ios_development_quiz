//
//  ViewController.swift
//  quiz
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionView: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreView: UILabel!
    
    var quizbrain = quizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        
        if quizbrain.checkAnswer(a: userAnswer!){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        scoreView.text = String("Score: \(quizbrain.getScore())")
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }

    @objc func updateUI(){
        questionView.text = quizbrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizbrain.getProgress()
    }
}


