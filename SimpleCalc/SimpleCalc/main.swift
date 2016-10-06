//
//  main.swift
//  SimpleCalc
//
//  Created by Daniel Gil Chávez on 10/6/16.
//  Copyright © 2016 Unintended Software. All rights reserved.
//

import Foundation

print("Enter \"calc\" for simple operations.\nEnter \"avg\" to find the average of numbers inputted.")
print("Enter \"count\" to get the number of inputs.\nEnter \"fact\" to find the factorial of a number.")

let action  = readLine(strippingNewline: true)!;

switch action {
    
case "calc":
    print("Enter the first number:");
    let num1 = UInt.init(readLine(strippingNewline: true)!)!;
    print("Enter the operation (+, -, *, /, %):");
    let operation = readLine(strippingNewline: true)!;
    print("Enter the second number:");
    let num2 = UInt.init(readLine(strippingNewline: true)!)!;
    
    switch operation {
    case "+":
        print(num1+num2)
    case "-":
        print(num1-num2)
    case "*":
        print(num1*num2)
        
    case "/":
        print(num1/num2)
    case "%":
        print(num1%num2)
        
    default:
        print("Operation was unsuccessful!")
    }
    
case "count":
    print("Enter numbers to be counted separated by spaces and hit return.")
    let countedStrings = readLine(strippingNewline: true)!
    let countedStringNumber = countedStrings.characters.split{$0 == " "}.map(String.init)
    print(countedStringNumber.count)
    
case "avg":
    print("Enter numbers to be averaged separated by spaces and hit return.")
    let avgStrings = readLine(strippingNewline: true)!
    let avgStringsArr = avgStrings.characters.split{$0 == " "}.map(String.init)
    var total=0;
    
    for i in 0 ..< avgStringsArr.count  {
        
        total = total + Int(UInt.init(avgStringsArr[i])!)
        
    }
    print("Average: " + String(total/avgStringsArr.count));
case "fact":
    print("Find the factorial of number:")
    let factNumber = UInt.init(readLine(strippingNewline: true)!)!
    var fact = Int(factNumber);
    var answer = 1
    for num in 1...fact {
        answer = answer * num
    }
    print("Factorial: "+String(answer));

default:
    print("Not a valid input")
}


