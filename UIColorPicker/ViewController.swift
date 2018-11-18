//
//  ViewController.swift
//  UIColorPicker
//
//  Created by Mike Mayer on 11/18/18.
//  Copyright © 2018 VMWishes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!
  @IBOutlet weak var alphaSlider: UISlider!
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var blueLabel: UILabel!
  @IBOutlet weak var alphaLabel: UILabel!
  @IBOutlet weak var colorView: UIView!
  
  var red : Float = 0.5
  var green : Float = 0.5
  var blue : Float = 0.5
  var alpha : Float = 0.5
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateColor()
  }

  @IBAction func handleSlider(_ sender: UISlider)
  {
    let value = sender.value
    let label = String(format:"%.2f",value)
    print(String(format:"%f: %@", value, label))
    
    switch(sender)
    {
    case redSlider:
      red = value
      redLabel.text = label
    case greenSlider:
      green = value
      greenLabel.text = label
    case blueSlider:
      blue = value
      blueLabel.text = label
    case alphaSlider:
      alpha = value
      alphaLabel.text = label
    default:
      break;
    }
    updateColor()
  }
  
  func updateColor()
  {
    colorView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
  }
  
}

