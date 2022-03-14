//
//  ViewController.swift
//  ColorMix
//
//  Created by Paula Coombs on 3/10/22.
//

import UIKit

class ViewController: UIViewController {
// added an action pg  309
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
// setting the view's color pg 311
// removed this code from pg 328 colorView.backgroundColor = .black
//        super.viewDidLoad()

// updateColor()
        
        // Do any additional setup after loading the view.
    }
// added the switch pg 320
    @IBAction func switchChanged(_ sender: UISwitch) {
// to make the switch behave like a real switch pg 321
//        if sender.isOn {
//            colorView.backgroundColor = .red
//       } else {
//            colorView.backgroundColor = .black
//        }
 
updateColor()
    }
    @IBOutlet var redSwitch: UISwitch!
    
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!

// update color pg 327
func updateColor() {
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    if redSwitch.isOn {
        red = 1
    }
    if greenSwitch.isOn {
        green = 1
    }
    if blueSwitch.isOn {
        blue = 1
    }

    let color = UIColor(red: red, green: green,
       blue: blue, alpha: 1)
    colorView.backgroundColor = color
    }

}
