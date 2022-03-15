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
// changes from pg 333.
    if redSwitch.isOn {
        red = CGFloat(redSlider.value)
    }
    if greenSwitch.isOn {
        green = CGFloat(greenSlider.value)
        
    }
    if blueSwitch.isOn {
        blue = CGFloat(blueSlider.value)
        
    }

    let color = UIColor(red: red, green: green,
       blue: blue, alpha: 1)
    colorView.backgroundColor = color
    }
// connecting outlets and actions pg 332
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueSlider: UISlider!
    
//connecting the sliders to actions pg 333, then control-drag from the circle icon in the gutter by the new action to each slider
    
    @IBAction func sliderChanged(_ sender: Any) {
    }
    
// created the reset button pg 337
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateColor()
    }
 

    }
}



