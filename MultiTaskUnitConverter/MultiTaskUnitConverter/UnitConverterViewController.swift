//
//  UnitConverterViewController.swift
//  MultiTaskUnitConverter
//
//  Created by Lambda_School_Loaner_241 on 2/28/20.
//  Copyright © 2020 Lambda_School_Loaner_241. All rights reserved.
//

import UIKit

enum Metric {
    case deka
    case hecto
    case kilo
    case deci
    case centi
    case mili
    
}

class UnitConverterViewController: UIViewController {
    var metric: Metric = .centi
    
    // Mark:- IBOutlets/Properties
    @IBOutlet weak var basicUnitTextField: UITextField!
    
    @IBOutlet weak var metricUnitLabel: UILabel!
    
    @IBOutlet weak var metricUnitTextField: UITextField!
    
    @IBOutlet weak var dekaButton: UIButton!
    @IBOutlet weak var hectoButton: UIButton!
    
    @IBOutlet weak var kiloButton: UIButton!
    @IBOutlet weak var deciButton: UIButton!
    @IBOutlet weak var centiButton: UIButton!
    @IBOutlet weak var miliButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    // Mark: - IBActions
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        /*  if let userInput = metricUnitTextField.text {
         if let userInputDouble = Double(userInput) {
         basicUnitTextField.text = "\(convert(userInputDouble))"
         
         }
         
         }  */
        if let userInput2 = basicUnitTextField.text {
            if let userInput2Double = Double(userInput2){
                metricUnitTextField.text = "\(convert(userInput2Double))"
            }
            
        }
    }
    
    
    @IBAction func hectoButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            metric = .hecto
            metricUnitLabel.text = " hecto: "
        }
    }
    
    
    @IBAction func dekaButtonTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            metric = .deka
            metricUnitLabel.text = " deka: "
            
        }
    }
    
    @IBAction func kiloButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            metric = .kilo
            metricUnitLabel.text = " kilo: "
        }
    }
    
    @IBAction func deciButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            metric = .deci
            metricUnitLabel.text = " deci: "
        }
        
    }
    
    @IBAction func centiButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            metric = .centi
            metricUnitLabel.text = " centi: "
        }
    }
    @IBAction func miliButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            metric = .mili
            metricUnitLabel.text = " mili: "
        }
    }
    
    // Mark :- Helper Method
    
    func convert(_ m: Double) -> Double {
        let hectoConversionRate = 0.01
        let kiloConversionRate = 0.001
        let centiConversionRate = 100.0
        let miliConversionRate = 1000.0
        let dekaConversionRate = 0.1
        let deciConversionRate = 10.0
        
        
        
        switch(metric){
        case .hecto:
            return Double(m * hectoConversionRate)
        case .kilo:
            return Double(m * kiloConversionRate)
        case .centi:
            return Double(m * centiConversionRate)
        case .mili:
            return Double(m * miliConversionRate)
        case .deka:
            return Double(m * dekaConversionRate)
            
        case .deci:
            return Double(m * deciConversionRate)
            
        }
        
        
        
    }
    
    
    
}


