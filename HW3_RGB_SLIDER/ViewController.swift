//
//  ViewController.swift
//  HW3_RGB_SLIDER
//
//  Created by Dmitry on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewPalette: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet var sliders: [UISlider]!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPalette.layer.cornerRadius = 20
        viewPalette.backgroundColor = UIColor(
            red: 0.5,
            green: 0.5,
            blue: 0.5,
            alpha: 1
        )
        
        sliderStyle()
        sliderColor()
    }
    
    @IBAction func colorToChange(_ sender: UISlider) {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        viewPalette.backgroundColor = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: 1
        )
    }
    
    @IBAction func labelToChange(_ sender: UISlider) {
        redLabel.text = String(round(redSlider.value * 10) / 10.0)
        greenLabel.text = String(round(greenSlider.value * 10) / 10.0)
        blueLabel.text = String(round(blueSlider.value * 10) / 10.0)
    }
    
    private func sliderStyle() {
        for slider in sliders {
            slider.value = 0.5
            slider.minimumValue = 0
            slider.maximumValue = 1
            slider.minimumTrackTintColor = #colorLiteral(red: 0.04698782414, green: 0.4725219607, blue: 0.9717153907, alpha: 0.5)
        }
    }
    
    private func sliderColor() {
        redSlider.maximumTrackTintColor = #colorLiteral(red: 1, green: 0.193795681, blue: 0.1874657273, alpha: 1)
        greenSlider.maximumTrackTintColor = #colorLiteral(red: 0.1406565607, green: 0.4931890965, blue: 0.08716139942, alpha: 1)
        blueSlider.maximumTrackTintColor = #colorLiteral(red: 0.08504668623, green: 0.4040319622, blue: 0.9499208331, alpha: 1)
        
    }
    
    
    
}
