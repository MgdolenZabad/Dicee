//
//  ViewController.swift
//  Dicee
//
//  Created by Mgdolen Zabad on 2/2/18.
//  Copyright © 2018 MgdolenZabad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //The Variable is Container for the Data
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    //array is containar for same types, start counting from zero
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
    func updateDiceImages() {
        
        //arc4random_uniform : is to create random number
        //arc4random_uniform : is of type UInt32 so to change it to Int we have to add after = sign Int(arc4random_uniform(6)) that called Casting the arc4random_uniform(6) into Int
        
        randomDiceIndex1 = Int (arc4random_uniform(6))
        randomDiceIndex2 = Int (arc4random_uniform(6))
    
        
        //refrence to: diceimageview1, change : image property, set it to uiImage and refere to the image name
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
    

}

