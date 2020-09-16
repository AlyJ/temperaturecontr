//
//  ViewController.swift
//  temperaturecontr
//
//  Created by alina.jarmolica on 06/09/2020.
//  Copyright © 2020 alina.jarmolica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    
    @IBOutlet weak var farhenheitLabel: UILabel!
    
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 99
            tempSlider.value = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        farhenheitLabel.text = "32º F"
        // Do any additional setup after loading the view.
    }


    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("value:", sender.value)
        let tempCelsius = Int(sender.value)
        celciusLabel.text = "\(tempCelsius) ºC"
        
        let tempFahr = Int((sender.value * 9 / 5) + 32)
        farhenheitLabel.text = "\(tempFahr) ºF"
    }
}

