//
//  ViewController.swift
//  Dice
//
//  Created by Ivan Caldwell on 6/22/19.
//  Copyright © 2019 Ivan Caldwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomInt_01: Int = 0
    var randomInt_02: Int = 0
    @IBOutlet weak var diceImageView_02: UIImageView!
    @IBOutlet weak var diceImageView_01: UIImageView!
   
    
    @IBAction func rollButtonTapped(_ sender: Any) {
        rollDice()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }
    
    func rollDice() {
        randomInt_01 = Int.random(in: 1...6)
        randomInt_02 = Int.random(in: 1...6)
        diceImageView_01.image = UIImage(named: "dice\(randomInt_01)")
        diceImageView_02.image = UIImage(named: "dice\(randomInt_02)")
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollDice()
        }
    }
}

