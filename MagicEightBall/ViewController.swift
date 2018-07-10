//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Gabbie on 7/2/18.
//  Copyright © 2018 Gabbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "Tell me more", "No. Absolutely no.", "Sure", "Most likely.", "I believe so.", "There is a 4% chance", "I'm not sure, try again maybe?", "100%"]
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        answerLabel.text = answers[randomIndex]
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else {return}
        generateAnswer()
    
        
    }
}

