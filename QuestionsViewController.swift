//
//  QuestionsViewController.swift
//  Trivity
//
//  Created by Ishani Das on 2/29/20.
//  Copyright © 2020 Ishani Das. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreNum: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var questionCounterLabel: UILabel!
    
    // answer options
    @IBOutlet weak var trueLabel: UIButton!
    @IBOutlet weak var falseLabel: UIButton!
    
    var topic = ""
    var questions = ["", "", ""]
    var answers = [Bool]()
    
    var counter = 0
    var score = 0
    
    var questionCount = 1;
    /*
    override func loadView() {

    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        topicLabel.text = topic
        questionCounterLabel.text = "\(questionCount)"
        progressView.frame.size.width = (view.frame.size.width) / 10 * CGFloat(counter + 1)
        /*
        for question in questions{
            questionLabel.text = question;
            
        }
 */
        questionLabel.text = questions[counter];
        questionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping;
        questionLabel.numberOfLines = 0;
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if(counter < questions.count){
            print(counter)
            questionLabel.text = questions[counter];
            if sender.tag == 1{
                print("true pressed")
                if(answers[counter] == true){
                    score += 1
                    progressView.backgroundColor = UIColor.green
                }else{
                    progressView.backgroundColor = UIColor.red
                }
            }else{
                print("false pressed")
                if(answers[counter] == false){
                    score += 1
                    progressView.backgroundColor = UIColor.green
                }else{
                    progressView.backgroundColor = UIColor.red
                }
            }
            //questionCount += 1
            questionCounterLabel.text = "\(questionCount)"
            questionCount += 1
            scoreNum.text = "\(score)"
            progressView.frame.size.width = (view.frame.size.width) / 10 * CGFloat(counter + 1)
            counter += 1
        }else{
            // alert
            if(topic == "Medical Conditions"){
                doneAlert(title: "Congratulations!", message: "You are done with the quiz. Are you ready to donate $\(score) to St. Jude's Children Research Hospital?")
            }else if (topic == "Environment"){
                doneAlert(title: "Congratulations!", message: "You are done with the quiz. Are you ready to donate $\(score) to the Defenders of Wildlife?")
            }else if(topic == "General Health"){
                doneAlert(title: "Congratulations!", message: "You are done with the quiz. Are you ready to donate $\(score) to the Red Cross")
            }else if(topic == "Food Wastage"){
                doneAlert(title: "Congratulations!", message: "You are done with the quiz. Are you ready to donate $\(score) to the San Francisco-Marin Food Bank?")
            }else{
                doneAlert(title: "Congratulations!", message: "You are done with the quiz. Are you ready to donate $\(score) to ASPCA (American Society for the Prevention of Cruelty to Animals)?")
            }
        }
        /*
        if(questionCount != 1){
            questionCount += 1;
        }else{
            questionCounterLabel.text = "\(questionCount)"
        }
        if(counter < questions.count){
            if(counter == 0){
                print("clicked for first time")
            }
            questionLabel.text = questions[counter];
            if sender.tag == 1{
                print("true pressed")
                if(answers[counter] == true){
                    score += 1;
                    scoreNum.text = "\(score)"
                    questionCount+=1
                }
            }else{
                print("false pressed")
                if(answers[counter] == false){
                    score += 1;
                    scoreNum.text = "\(score)"
                }
            }
            counter += 1;
            if(questionCount == 1){
                questionCount += 1
            }
            questionCounterLabel.text = "\(questionCount)"
        }
    */
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func doneAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes!", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("Yes")
        }))
        alert.addAction(UIAlertAction(title: "Later", style: .default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
            print("Later")
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    

}
