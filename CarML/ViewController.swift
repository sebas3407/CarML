//
//  ViewController.swift
//  CarML
//
//  Created by Sebastian Ortiz Velez on 28/09/2019.
//  Copyright © 2019 Sebastian Ortiz Velez. All rights reserved.
//

import UIKit
import CoreML

class ViewController: UIViewController {
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var modelSegmentedControl: UISegmentedControl!
    @IBOutlet weak var extrasSwitch: UISwitch!
    @IBOutlet weak var estadoSegmentedControl: UISegmentedControl!
    
  //  let cars = Cars()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainStackView.setCustomSpacing(40, after: modelSegmentedControl)
        
        mainStackView.setCustomSpacing(40, after: extrasSwitch)
        
        mainStackView.setCustomSpacing(40, after: estadoSegmentedControl)
        
        calculateValue()
    }
    
    @IBAction func calculateValue() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 0
        
        //Hacer la prediccion usando CoreML
        let model : Double = Double(modelSegmentedControl.selectedSegmentIndex)
        let extra : Double = extrasSwitch.isOn ? 1.0 : 0.0
        let estado : Double = Double(estadoSegmentedControl.selectedSegmentIndex)
        
//        if let prediction = try? cars.prediction(
//            modelo: model,
//            extras: extra
//            estado: estado
//        )
//
//        let clampValue = max(500, prediction.price)
    }
}
