//
//  ViewController.swift
//  Dice
//
//  Created by William Bacon on 6/9/16.
//  Copyright © 2016 William Bacon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0

    @IBOutlet var BlackDice: UIImageView!
    
    @IBOutlet var RedDice: UIImageView!
    
    @IBOutlet var ColorDice: UIImageView!
   
    @IBOutlet var roll: UILabel!
    
    
    @IBOutlet var Randomizer: UIButton!
    
    @IBAction func Randomizer(sender: UIButton) {
        rollBlackDice()
        rollColorDice()
        rollRedDice()
        number += 1
        roll.text = "\(number)"
    }
 
    @IBAction func reset(sender: UIButton) {
        number = 0
        roll.text = "\(number)"
    }
 
    func rollBlackDice() {
       let randomNumber = (Int(arc4random_uniform(6)) + 1)
        
        switch randomNumber{
        case 1:
            BlackDice.image = UIImage(named: "imgres")
            BlackDice.image = UIImage(named: "1-border-1")
        case 2:
            BlackDice.image = UIImage(named: "imgres")
            BlackDice.image = UIImage(named: "2-border")
        case 3:
            BlackDice.image = UIImage(named: "imgres")
            BlackDice.image = UIImage(named: "3-border-3")
        case 4:
            BlackDice.image = UIImage(named: "imgres")
            BlackDice.image = UIImage(named: "4-border")
        case 5:
            BlackDice.image = UIImage(named: "imgres")
            BlackDice.image = UIImage(named: "5-border")
        case 6:
            BlackDice.image = UIImage(named: "imgres")
            BlackDice.image = UIImage(named: "6-border-1")
        default:
            BlackDice.image = nil
        
        }
        
    }
    
    func rollRedDice() {
        
       let randomNumber = (Int(arc4random_uniform(6)) + 1)
        
        switch randomNumber{
        case 1:
            RedDice.image = UIImage(named: "1-border-red")
        case 2:
            RedDice.image = UIImage(named: "2-border-red")
        case 3:
            RedDice.image = UIImage(named: "3-border-red-1")
        case 4:
            RedDice.image = UIImage(named: "4-border-red")
        case 5:
            RedDice.image = UIImage(named: "5-border-red-1")
        case 6:
            RedDice.image = UIImage(named: "6-border-red-1")
        
        default:
            RedDice.image = nil
            
        }

        
    }
    
    func rollColorDice() {
      
      let randomNumber = (Int(arc4random_uniform(6)) + 1)
        
        switch randomNumber{
        case 1:
            ColorDice.image = UIImage(named: "imgres")
        case 2:
            ColorDice.image = UIImage(named: "imgres-1")
        case 3:
            ColorDice.image = UIImage(named: "imgres-2")
        case 4:
            ColorDice.image = UIImage(named: "imgres-3")
        case 5:
            ColorDice.image = UIImage(named: "imgres-4")
        case 6:
            ColorDice.image = UIImage(named: "imgres-5")
            
        default:
            ColorDice.image = nil
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

