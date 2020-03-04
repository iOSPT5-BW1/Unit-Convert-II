//
//  CurrencyUnitViewController.swift
//  MultiTaskUnitConverter
//
//  Created by Lambda_School_Loaner_241 on 3/3/20.
//  Copyright © 2020 Lambda_School_Loaner_241. All rights reserved.
//

import UIKit

enum Currency {
    case bitcoin
    case peso
    case euro
    case rupees
    case pounds
}

class CurrencyUnitViewController: UIViewController {
    var currency: Currency = .bitcoin
    
    // Mark:- IBOutlets/Properties
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var secondCurrencyTextField: UITextField!
    @IBOutlet weak var secondCurrencyLabel: UILabel!
    
    @IBOutlet weak var euroCurrencyButton: UIButton!
    @IBOutlet weak var rupeesCurrencyButton: UIButton!
    @IBOutlet weak var poundsCurrencyButton: UIButton!
    @IBOutlet weak var bitCoinButton: UIButton!
    @IBOutlet weak var pesoCurrencyButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Mark:- IBActions
    @IBAction func calculateButtonPressed(_ sender: Any) {
        guard let userInput = currencyTextField.text, !userInput.isEmpty, let userInputDouble = Double(userInput) else { return }
        
        secondCurrencyTextField.text = "\(convert(userInputDouble))"
    }
    @IBAction func euroButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            currency = .euro
            secondCurrencyLabel.text = " Euro: "
        }
    }
    
    @IBAction func rupeesButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            currency = .rupees
            secondCurrencyLabel.text = " Rupees: "
        }
    }
    @IBAction func poundsButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            currency = .pounds
            secondCurrencyLabel.text = " Pounds: "
        }
    }
    @IBAction func bitCoinPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            currency = .bitcoin
            secondCurrencyLabel.text = " Bitcoin: "
        }
    }
    @IBAction func pesoButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            currency = .peso
            secondCurrencyLabel.text = " Peso: "
        }
    }
    
    // Mark:- Helper Methods
    func convert(_ money: Double) -> Double {
        let euroConstant = 0.9
        let rupeesConstant = 0.01
        let poundsConstant = 0.78
        let pesoConstant = 19.4
        let bitCoin = 0.0001
        
        switch(currency){
        case .bitcoin:
            return money * bitCoin
        case .euro:
            return money * euroConstant
        case .peso:
            return money * pesoConstant
        case .pounds:
            return money * poundsConstant
        case .rupees:
            return money * rupeesConstant
            
        }
        
    }
    

}
