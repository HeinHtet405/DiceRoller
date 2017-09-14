//
//  ViewController.swift
//  DiceRoller
//
//  Created by Hein Htet Aung on 9/14/17.
//  Copyright © 2017 Hein Htet Aung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var dicImageOne: UIImageView!
    @IBOutlet weak var dicImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomData()
    }
    
    // Hide Status Bar
    override var prefersStatusBarHidden: Bool{
        return true
    }

    @IBAction func pressedRollBtn(_ sender: Any) {
        generateRandomData()
    }
    
    func generateRandomData() {
        // Generate Random Number
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // Add Image
        dicImageOne.image = UIImage(named: diceArray[randomDiceIndex1])
        dicImageTwo.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateRandomData()
    }
}

