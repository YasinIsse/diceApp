//
//  ViewController.swift
//  DiceApp
//
//  Created by Yasin Isse on 2019-01-19.
//  Copyright © 2019 Yasin Isse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBAction func rollButtonPress(_ sender: Any) {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))+1
        randomDiceIndex2 = Int(arc4random_uniform(6))+1
        print(randomDiceIndex1)

    }
    
}


