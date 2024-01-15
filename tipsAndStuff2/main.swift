//  main.swift
//  tipsAndStuff2
//
//  Created by Marcelo de Abreu on 05/01/24.

import Foundation

// SHORTCUTS

// OPTIONALS
//  Optional is a type that represents either a wrapped value or the absence of a value.
//  It is a powerful feature in Swift that allows you to express the possibility that a value may be nil.
//  The syntax for defining an Optional is achieved by appending a question mark (?) to the type declaration.

 var name: String?  // This declares an Optional String

// OPTIONAL BINDINGS
//  An Optional can either contain a value of the specified type or be nil.
//  To assign a value to an Optional or set it to nil, you use optional unwrapping.
//  There are different ways to unwrap an Optional value, and one common approach is using optional binding
//  with if let or guard let:
 
var nameOptionalBinding: String? = "Marcelo"

// Using if let for optional binding
if let unwrappedName = nameOptionalBinding {
    print("The name is \(unwrappedName)")
} else {
    print("The name is nil")
}

//String Interpolation:
//String interpolation is a feature that allows you to include the value of variables and expressions within a string literal.
//You use the backslash '\' followed by parentheses () to enclose the variable or expression inside a string.
let nameStringInterpolation = "John"
let age = 25
let message = "My name is \(nameStringInterpolation) and I am \(age) years old."
print(message)

//String Concatenation:
//String concatenation involves combining two or more strings using the + operator.
let firstName = "Jane"
let lastName = "Smith"
let fullNameStringConcatenation = firstName + " " + lastName
print(fullNameStringConcatenation)

// DO NOT EVER USE FORCE UNWRAPPING !!!!!!!!!!

// FUNCTIONS

// without parameters nor return
func functionWithoutParametersAndReturn() {
    // simple action
    print(5+10)
}
functionWithoutParametersAndReturn()

// with parameters without return
func functionWithParameters(value1: Int, value2: Int) {
    print(value1 + value2)
}
functionWithParameters(value1: 5, value2: 10) // data type must be equal but values can change. What maintain is the action inside code block {}

// with return without parameters
func functionWithReturn() -> Int {
    return 5 + 10
}
print(functionWithReturn())

// with parameters and return
func functionWithParametersAndReturn (value1: Int, value2: Int) -> Int {
    return value1 + value2
}
print(functionWithParametersAndReturn(value1: 5, value2: 10))

// CONDITIONALS allow you to control the flow of your program based on various conditions.

// if else - used to execute one block of code if a condition is true and another block if the condition is false.
func validateAge(age: Int) -> Bool {
    if age >= 21 {
        return true
    } else {
        return false
    }
}
print(validateAge(age: 30))

// you can use 'else if' to check multiple conditions in sequence.
let exampleNumber = 5
if exampleNumber > 5 {
    print("Number is greater than 5")
} else if exampleNumber < 5 {
    print("Number is less than 5")
} else {
    print("Number is equal to 5")
}

//  TIP: the ternary operator is a concise way to write a simple if-else statement in a single line.
let ternaryOperatorNumber = 8
let result = (ternaryOperatorNumber > 5) ? "Greater than 5" : "Less than or equal to 5"
print(result)

//  for handling multiple cases is possible to use 'switch'
let day = "Monday"
switch day {
case "Monday":
    print("It's Monday")
case "Tuesday", "Wednesday":
    print("It's Tuesday or Wednesday")
default:
    print("It's another day")
}

//  loops
//  use to execute a block of code repeatedly until a certain condition is met.
// while
var index: Int = 0
while index <= 10 {
    print("index: \(index)")
    index += 1
}
print("index final value is: \(index)")

// while-repeat
var anotherIndex: Int = 0
repeat {
    print("index: \(anotherIndex)")
    anotherIndex += 1
} while anotherIndex <= 10
            
// for-in
// use to iterate over a sequence, such as a range of numbers, an array, or a collection.
// more commonly used with arrays
for forInValue in 1...5 {
    print(forInValue)
}

// example with array
let fruits = ["Apple", "Banana", "Orange"]
for fruit in fruits {
    print(fruit)
}
// arrays
// collection type that allows you to store multiple values of the same type in an ordered list.
// each value in the array is assigned a unique index, starting from zero for the first element.
// arrays in swift are typed, meaning that all elements in the array must be of the same type.

// Using array literal syntax
var fruitsArray: [String] = ["Apple", "Banana", "Orange"]

// Using array initializer
var numbersArray = Array<Int>()

let firstFruit = fruitsArray[0]  // accessing the first element

// useful properties and methods
let arrayCount = fruitsArray.count   // number of elements in the array
let isArrayEmpty = fruitsArray.isEmpty  // check if the array is empty
let reversedArrayFruits = fruitsArray.reversed  // create a reversed version of the array

// removing item from array with for-in
for (index, value) in fruitsArray.enumerated() {
    if value == "Orange" {
        print("Item found.")
        fruitsArray.remove(at: index)
        print("Item removed.")
    }
}

// addint item to array
print(fruitsArray)
fruitsArray.append("Coconut")
print(fruitsArray)

// dictionary
// collection type that allows you to store and retrieve values based on unique keys.
// > > > [keyType : valueType] < < <
// unordered!! values are accessible by specific keys
var studentGrades: [Int : String] = [1: "lowest grade.",
                                     2: "not there yet... work harder.",
                                     3: "barelly enough.",
                                     4: "you are good!",
                                     5: "just like a pro."]

print(studentGrades[10] ?? "grade not found.") // not item will be found
print(studentGrades[5] ?? "grade not found.")

// updating item from dictionary

// removing item from dictionary with for-in


