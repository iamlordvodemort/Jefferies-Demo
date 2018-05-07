//: Playground - noun: a place where people can play

import UIKit

/**
 “You are beta testing the newest version of Xcode and it has a bug. You can no longer use built-in Int function to turn a string into a number. Given this restriction, create a playground with a function that takes two strings of numbers as arguments and returns a new string that is the sum of the arguments.

 Bonus: Your Xcode also lacks the basic operator “+”, find a way to add the two strings together without using basic addition

 Bonus Bonus: Build a single page application that allows users to input the two “numbers”, use the function in either part 1 or part 2 to add them together, and display the result.

 All projects and files should be shared on GitHub”
 */

func sum(_ string1: String, and string2: String) -> String? {
    guard let number1 = NumberFormatter().number(from: string1)?.intValue,
        let number2 = NumberFormatter().number(from: string2)?.intValue else {
        return nil
    }

    let sumVal = number1 + number2
    return String(sumVal)
}

let sumVal = sum("23", and: "1")


func add(_ x: Int, and y: Int) -> Int {
    if (y == 0) { return x }
    let sum = x ^ y //SUM of two integer is X XOR Y
    let carry = (x & y) << 1 //CARRY of two integer is X AND Y
    return add(sum, and: carry)
}

func sum2(_ string1: String, and string2: String) -> String? {
    guard let number1 = NumberFormatter().number(from: string1)?.intValue,
        let number2 = NumberFormatter().number(from: string2)?.intValue else {
            return nil
    }

    let sumVal = add(number1, and: number2)
    return String(sumVal)
}

let sumVal2 = sum2("0", and: "1")









