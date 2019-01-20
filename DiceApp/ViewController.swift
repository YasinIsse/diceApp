//
//  ViewController.swift

//  DiceApp, a dice application that randomly rolls two dices when pressed or when shaked.
//
//  Created by Yasin Isse on 2019-01-19.
//  Copyright © 2019 Yasin Isse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Integer variables to select the dice image when rolling the dices.
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // An array of the dice's image names.
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    // Random dices show when the application starts up.
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()

    }

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!

    // When the 'Roll' button is pressed the dices are rolled.
    @IBAction func rollButtonPress(_ sender: Any) {
        
        updateDiceImages()
    }
    
    // A function to randomly generate the dice numbers when rolled.
    func updateDiceImages ()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage (named:diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage (named:diceArray[randomDiceIndex2])
        
    }
    
    // The motion gesture to also cause the dices to be rolled.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        updateDiceImages()
    }
    
}


