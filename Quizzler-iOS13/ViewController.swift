

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to six","True"],
        ["Five - Three is greater than One","False"],
    ["Three + Eight is less than Ten","True"],
    ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        var actualAnswer = quiz[questionNumber][1]
        var userAnswer = sender.currentTitle
        
        if userAnswer == actualAnswer
        {
            print("Right")
        }
        else{
            print("Wrong")
        }
        
        if(questionNumber+1 < quiz.count){
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        
       updateUI()
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

