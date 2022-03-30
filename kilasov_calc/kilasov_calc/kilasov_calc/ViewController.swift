//
//  ViewController.swift
//  kilasov_calc
//
//  Created by Student on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var operand = ""
    var numberOne = ""
    var numberTwo = ""

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    // Функция для обнуляения
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    //Функция обработки нажатия на клавиши +, -, /, *
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    //Кнопка результата
    @IBAction func resultAction(_ sender: Any) {
        var result = 0.0
        
        switch operand {
            case "/":
                result = Double(numberOne)! / Double(numberTwo)!
            case "*":
                result = Double(numberOne)! * Double(numberTwo)!
            case "-":
                result = Double(numberOne)! - Double(numberTwo)!
            case "+":
                result = Double(numberOne)! + Double(numberTwo)!
        }
        
        if result.truncatingRemainder(dividingBy: 1.0) == 00 {
            resultLabel.text = String(Int(result))
        } else {
            resultLabel.text = String(result)
        }
    }
}

