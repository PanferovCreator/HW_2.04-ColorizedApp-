//
//  ViewController.swift
//  HW_2.04(ColorizedApp)
//
//  Created by Dmitriy Panferov on 06/02/23.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 15
        
        sliderAction()
        
    }

    // MARK: - IBActions
    @IBAction func sliderAction() {
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)

        mainView.backgroundColor = UIColor(
                displayP3Red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1
        )
    }
    
}

