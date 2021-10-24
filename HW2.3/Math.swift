//
//  Math Problems.swift
//  HW2.3
//
//  Created by Azamat Sarinzhiev on 22/10/21.
//

import Foundation
class Math {
    var num1: Int
    var num2: Int
    
    init(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
    func Power() -> Int {
        var result: Int = 1
        if num2 < 0 {
            var negativeDegree = num2 * -1
            for item in 1...negativeDegree {
                result *= num1
            }
            return  1/result
        } else {
            for item in 1...num2 {
                result *= num1        }
            return result
        }
    }
    func SquareRoot() -> Double {
        var convertNum1ToDouble = Double(num1)
        return convertNum1ToDouble.squareRoot()
    }
    func Add() -> Int {
        return num1 + num2
    }
    func Subtract() -> Int {
        return num1 - num2
    }
    func Multiply() -> Int {
        return num1 * num2
    }
    func Divide() -> Double {
        var convertNum1ToDouble = Double(num1)
        var convertNum2ToDouble = Double(num2)
        return convertNum1ToDouble / convertNum2ToDouble
    }
    func Percent() -> Double {
        var convertNum1ToDouble = Double(num1)
        var convertNum2ToDouble = Double(num2)
        return convertNum2ToDouble / convertNum1ToDouble * 100
    }
    func Sinus() -> Double {
        var convertNum1ToDouble = Double(num1)
        var convertNum2ToDouble = Double(num2)
        var hypotenuse = sqrt((convertNum1ToDouble * convertNum1ToDouble) + (convertNum2ToDouble * convertNum2ToDouble))
        return convertNum1ToDouble / hypotenuse
    }
    func Cosinus() -> Double {
        return sqrt(1 - Sinus() * Sinus())
    }
}
