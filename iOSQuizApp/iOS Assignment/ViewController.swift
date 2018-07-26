//
//  ViewController.swift
//  iOS Assignment
//
//  Created by Guneet Singh on 2017-07-05.
//  Copyright © 2017 Guneet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quesLabel: UILabel!
    
    @IBOutlet weak var quesNumberLabel: UILabel!
    @IBOutlet weak var ansButton1: UIButton!
    @IBOutlet weak var ansButton2: UIButton!
    @IBOutlet weak var ansButton3: UIButton!
    
    @IBOutlet weak var ansButton4: UIButton!
    
    @IBOutlet weak var tryAgainOutlet: UIButton!
    
    
    //functions required for the application- 
    
    var correctAnswer:Int = 0
    var counter:Int = 0
    var counter2: Int = 0
    var counter3: Int = 0
    var counter4: Int = 0
    var totalCorrectAnswers: Int = 0
    
    func questions()
    {
        
        hide()
        var randomNumber = arc4random() % 10
        randomNumber += 1
        counter += 1
        if(counter4 < 6)
        {
        switch(randomNumber)
        {
        case 1:
        
        quesLabel.text = "What is the capital of Canada?"
        ansButton1.setTitle("1. Ottawa", for: UIControlState.normal)
        ansButton2.setTitle("2. Delhi", for: UIControlState.normal)
        ansButton3.setTitle("3. London", for: UIControlState.normal)
        ansButton4.setTitle("4. Moscow", for: UIControlState.normal)
       correctAnswer = 1
        counter3 += 1
        quesNumberLabel.text = "Question \(counter3): "
        counter += 1
        
            break
        case 2:
        quesLabel.text = "Which is the longest river of the world?"
        ansButton1.setTitle("1. Amazon", for: UIControlState.normal)
        ansButton2.setTitle("2. Nile", for: UIControlState.normal)
        ansButton3.setTitle("3. Yangtze", for: UIControlState.normal)
        ansButton4.setTitle("4. Yellow ", for: UIControlState.normal)
        correctAnswer = 2
        counter3 += 1
        quesNumberLabel.text = "Question \(counter3): "

        counter += 1
            break
        case 3:
        
        quesLabel.text = "Which country has the longest river coast line?"
        ansButton1.setTitle("1. India", for: UIControlState.normal)
        ansButton2.setTitle("2. Australia", for: UIControlState.normal)
        ansButton3.setTitle("3. Canada", for: UIControlState.normal)
        ansButton4.setTitle("4. Indonesia ", for: UIControlState.normal)
        correctAnswer = 3
        counter3 += 1
        quesNumberLabel.text = "Question \(counter3): "
        counter += 1
            break
        case 4:
            
        quesLabel.text = "Which is the world's highest mountain?"
        ansButton1.setTitle("1. Makalu", for: UIControlState.normal)
        ansButton2.setTitle("2. Kilimanjaro", for: UIControlState.normal)
        ansButton3.setTitle("3. K2", for: UIControlState.normal)
        ansButton4.setTitle("4. Mount Everest ", for: UIControlState.normal)
        correctAnswer = 4
        counter3 += 1
        quesNumberLabel.text = "Question \(counter3): "
         counter += 1
            break
        case 5:
            
            quesLabel.text = "How many Great Lakes are there?"
            ansButton1.setTitle("1. 5", for: UIControlState.normal)
            ansButton2.setTitle("2. 6", for: UIControlState.normal)
            ansButton3.setTitle("3. 2", for: UIControlState.normal)
            ansButton4.setTitle("4. 3 ", for: UIControlState.normal)
            correctAnswer = 1
            counter3 += 1
            quesNumberLabel.text = "Question \(counter3): "
            counter += 1
            break
        case 6:
            
            quesLabel.text = "Which is the world's biggest desert?"
            ansButton1.setTitle("1. Arabian", for: UIControlState.normal)
            ansButton2.setTitle("2. Sahara", for: UIControlState.normal)
            ansButton3.setTitle("3. Great Australian", for: UIControlState.normal)
            ansButton4.setTitle("4. Thar ", for: UIControlState.normal)
            correctAnswer = 2
            counter3 += 1
            quesNumberLabel.text = "Question \(counter3): "
            counter += 1
            break
        case 7:
            
            quesLabel.text = "Which of these cities are not in Europe?"
            ansButton1.setTitle("1. Reykjavik", for: UIControlState.normal)
            ansButton2.setTitle("2. Prague", for: UIControlState.normal)
            ansButton3.setTitle("3. Bercelona", for: UIControlState.normal)
            ansButton4.setTitle("4. Moscow ", for: UIControlState.normal)
            correctAnswer = 4
            counter3 += 1
            quesNumberLabel.text = "Question \(counter3): "
            counter += 1
            break
        case 8:
            
            quesLabel.text = "Which of the following countries do not border France?"
            ansButton1.setTitle("1. Italy", for: UIControlState.normal)
            ansButton2.setTitle("2. Germany", for: UIControlState.normal)
            ansButton3.setTitle("3. Netherlands", for: UIControlState.normal)
            ansButton4.setTitle("4. Spain ", for: UIControlState.normal)
            correctAnswer = 3
            counter3 += 1
            quesNumberLabel.text = "Question \(counter3): "
            counter += 1
            break
        case 9:
            
            quesLabel.text = "Which U.S state is the Great Canyon located in?"
            ansButton1.setTitle("1. Arizona", for: UIControlState.normal)
            ansButton2.setTitle("2. New Mexico", for: UIControlState.normal)
            ansButton3.setTitle("3. Nevada", for: UIControlState.normal)
            ansButton4.setTitle("4. Wyoming ", for: UIControlState.normal)
            correctAnswer = 1
            counter3 += 1
            quesNumberLabel.text = "Question \(counter3): "
            counter += 1
            break
        case 10:
            
            quesLabel.text = "Which is the largest body of water?"
            ansButton1.setTitle("1. Pacific Ocean", for: UIControlState.normal)
            ansButton2.setTitle("2. Indian Ocean", for: UIControlState.normal)
            ansButton3.setTitle("3. Atlantic Ocean", for: UIControlState.normal)
            ansButton4.setTitle("4. Southern Ocean ", for: UIControlState.normal)
            correctAnswer = 1
            counter3 += 1
            quesNumberLabel.text = "Question \(counter3): "
            counter += 1
            break
        default:
            break
        }
            counter4 += 1
        }
        
    }
    
    @IBAction func ansButton1Action(_ sender: AnyObject) {
        
        if correctAnswer == 1 //&& counter4 < 5
        {
            questions()
            counter2 += 1
            //finalLabel.text = "Correct Answers: \(counter2)"
            totalCorrectAnswers = counter2
            popCheck1()
            
        }
        else
        {
            questions()
            popCheck1()
        }
        
        
    }
    @IBAction func ansButton2Action(_ sender: AnyObject) {
        
        if correctAnswer == 2 //&& counter4 < 5
        {
            questions()
            counter2 += 1
            //finalLabel.text = "Correct Answers: \(counter2)"
            totalCorrectAnswers = counter2
            popCheck1()
        }
        else
        {
            questions()
            popCheck1()
        }
        //finalLabel.text = "Correct Answers: \(totalCorrectAnswers)"
    }
    
    @IBAction func ansButton3Action(_ sender: AnyObject) {
        
        if correctAnswer == 3 //&& counter4 < 5
        {
            questions()
            counter2 += 1
            //finalLabel.text = "Correct Answers: \(counter2)"
            totalCorrectAnswers = counter2
            popCheck1()
            
        }
        else
        {
            
            questions()
            popCheck1()
        }
        
        //finalLabel.text = "Correct Answers: \(totalCorrectAnswers)"
    }
    @IBAction func ansButton4Action(_ sender: AnyObject) {
        
        if correctAnswer == 4 //&& counter4 < 5
        {
            questions()
            counter2 += 1
            //finalLabel.text = "Correct Answers: \(counter2)"
            totalCorrectAnswers = counter2
            popCheck1()
            
        }
        else
        {
            
            questions()
            popCheck1()
        }
        
        //finalLabel.text = "Correct Answers: \(totalCorrectAnswers)"
        
    }
    func popCheck1()
    {
        if counter4 == 6
        {
            if totalCorrectAnswers == 5
            {
                
                let alert = UIAlertController(title: "Test Completed",
                                              message: "You are a Genius!..You scored \(totalCorrectAnswers)/5",
                    preferredStyle: .alert)
                let action = UIAlertAction(title: "Okay! Thanks", style: .default,
                                           handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
                /*finalLabel.text = "You scored \(totalCorrectAnswers)"*/
                quesNumberLabel.text = "GAME OVER"
                quesLabel.text = "EXIT OR PLAY AGAIN"
                ansButton1.setTitle("", for: UIControlState.normal)
                ansButton2.setTitle("", for: UIControlState.normal)
                ansButton3.setTitle("", for: UIControlState.normal)
                ansButton4.setTitle("", for: UIControlState.normal)
                unhide()
            }
            else if totalCorrectAnswers == 4
            {
                
                let alert = UIAlertController(title: "Test Completed",
                                              message: "Excellent Work!..You scored \(totalCorrectAnswers)/5",
                    preferredStyle: .alert)
                let action = UIAlertAction(title: "Okay! Thanks", style: .default,
                                           handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
                /*finalLabel.text = "You scored \(totalCorrectAnswers)"*/
                quesNumberLabel.text = "GAME OVER"
                quesLabel.text = "EXIT OR PLAY AGAIN"
                ansButton1.setTitle("", for: UIControlState.normal)
                ansButton2.setTitle("", for: UIControlState.normal)
                ansButton3.setTitle("", for: UIControlState.normal)
                ansButton4.setTitle("", for: UIControlState.normal)
                unhide()
            }
            else if totalCorrectAnswers == 3
            {
                
                let alert = UIAlertController(title: "Test Completed",
                                              message: "Good Job!..You scored \(totalCorrectAnswers)/5",
                    preferredStyle: .alert)
                let action = UIAlertAction(title: "Okay! Thanks", style: .default,
                                           handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
                /*finalLabel.text = "You scored \(totalCorrectAnswers)"*/
                quesNumberLabel.text = "GAME OVER"
                quesLabel.text = "EXIT OR PLAY AGAIN"
                ansButton1.setTitle("", for: UIControlState.normal)
                ansButton2.setTitle("", for: UIControlState.normal)
                ansButton3.setTitle("", for: UIControlState.normal)
                ansButton4.setTitle("", for: UIControlState.normal)
                unhide()
            }
            else
            {
                let alert = UIAlertController(title: "Test Completed",
                                              message: "Please Try Again!..You scored \(totalCorrectAnswers)/5",
                    preferredStyle: .alert)
                let action = UIAlertAction(title: "Okay! let me try again.", style: UIAlertActionStyle.destructive,
                                           handler: tryAgainfunc)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
                /*finalLabel.text = "You scored \(totalCorrectAnswers)"*/
                quesNumberLabel.text = "GAME OVER"
                quesLabel.text = "EXIT OR PLAY AGAIN"
                ansButton1.setTitle("", for: UIControlState.normal)
                ansButton2.setTitle("", for: UIControlState.normal)
                ansButton3.setTitle("", for: UIControlState.normal)
                ansButton4.setTitle("", for: UIControlState.normal)
                
            }
        }
    }
    /*func exitFunc(action: UIAlertAction)
    {
        //exit pop up button
        exit(0)
    }*/
    func tryAgainfunc(action: UIAlertAction)
    {
        //try again pop-up
        counter = 0
        counter2 = 0
        counter3 = 0
        counter4 = 0
        totalCorrectAnswers = 0
        correctAnswer = 0
        questions()
    }
    @IBAction func tryAgain(_ sender: UIButton) {
        
        //try again button
        counter = 0
        counter2 = 0
        counter3 = 0
        counter4 = 0
        totalCorrectAnswers = 0
        correctAnswer = 0
        questions()
    }
    

    
    func hide()
    {
        //try again button will be hidden till the game is over
        tryAgainOutlet.isHidden = true
    }
    func unhide()
    {
        //try again button will show up when when game is over
        tryAgainOutlet.isHidden = false
    }
    
    @IBAction func exitButton(_ sender: UIButton) {
        //for exit button
        exit(0)
        
    }

    
    override func viewDidLoad() {
        
        //To display the 1st question automatically when an application is launched
        super.viewDidLoad()
        
        hide()
        questions()
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

