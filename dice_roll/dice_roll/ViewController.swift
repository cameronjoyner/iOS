//
//  ViewController.swift
//  dice_roll
//
//  Created by Cameron Joyner on 6/19/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollDice(_ sender: Any) {
        let number = (1...6).randomElement()!
        self.diceImageView.image = UIImage(named: "dice-\(number)")
    }
    
}

