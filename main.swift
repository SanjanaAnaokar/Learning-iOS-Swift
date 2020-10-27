//
//  main.swift
//  Assignment3Sanjana
//
//  Created by Sanjana Prasad Anaokar on 10/11/20.
//  Copyright © 2020 Sanjana Prasad Anaokar. All rights reserved.
//

import Foundation
/****************Exercise: Swift Functions***************/
print("****************Exercise: Swift Functions**************")
//•    Create a function called ‘add’ which takes two parameters in the form of Int and returns the addition.
//Print the value that returns from this function on the console
func add(a:Int, b:Int) -> Int{
    return a+b
}
print("add function returns: \(add(a:2, b:3))")

//•    Create a function called ‘multiply’ which takes two parameters in the form of Int and returns the multiplication
//Print the value that returns from this function on the console
func multiply(a:Int, b:Int) -> Int{
    return a*b
}
print("multiply function returns: \(multiply(a:2, b:3))")

//•    Create a function called ‘compute’ and paste the ‘add’ and ‘multiply’ functions inside this function. ‘compute’ will take parameters Boolean and two Int and if the Boolean value is true ‘add’ will be called else ‘multiply’ will be called.
//Print the value that returns from this function on the console
func compute(decision:Bool, a: Int, b: Int) -> Int{
    var c: Int = 0
    func add(a:Int, b:Int) -> Int{
        return a+b
    }
    func multiply(a:Int, b:Int) -> Int{
        return a*b
    }
    if decision{
        c = add(a: a,b: b)
    }
    else{
        c = multiply(a: a,b: b)
    }
    return c
}
print("compute function returns: \(compute(decision:true,a:2, b:3)) when boolean value was true")
print("compute function returns: \(compute(decision:false,a:2, b:3)) when boolean value was false")
/****************Exercise: Swift Structures***************/
print("****************Exercise: Swift Structures**************")
//•    Create a structure ‘Planet’ with two properties: name and distanceFromSun (Double)
struct Planet{
    var name: String
    var distanceFromSun: Double
}
//•    Create 2 instances of the structure providing the name and distanceFromSun.
let planet1 = Planet(name: "Venus", distanceFromSun: 5.0) //instance 1
let planet2 = Planet(name: "Jupiter", distanceFromSun: 10.0) //instance2

//•    Modify the function ‘compute’ to accept a Boolean and two Doubles perform the same add and multiply operations.
func compute(decision:Bool, a: Double, b: Double) -> Double{
    var c: Double = 0
    func add(a:Double, b:Double) -> Double{
        return a+b
    }
    func multiply(a:Double, b:Double) -> Double{
        return a*b
    }
    if decision{
        c = add(a: a,b: b)
    }
    else{
        c = multiply(a: a,b: b)
    }
    return c
}

//•    Pass the distance from the 2 instances of planet that you just created to the ‘compute’ function and print the output
print("compute function returns: \(compute(decision:true,a: planet1.distanceFromSun, b:planet2.distanceFromSun)) when boolean value was true")
print("compute function returns: \(compute(decision:false,a: planet1.distanceFromSun, b:planet2.distanceFromSun)) when boolean value was false")

/****************Exercise: Swift Classes***************/
print("****************Exercise: Swift Classes**************")
//•    Create a class ‘Animal’ with an empty function ‘makeNoise’.
class Animal{
    func makeNoise(){
    }
}
//•    Create a class ‘Dog’ as a subclass of ‘Animal’ override the function ‘makeNoise’ that prints ‘Dogs bark’.
class Dog:Animal{
    override func makeNoise() {
        print("Dogs bark")
    }
}
//•    Create a class ‘Cat’ as a subclass of ‘Animal’ override the function ‘makeNoise’ that prints ‘Cats purr’.
class Cat:Animal{
    override func makeNoise() {
        print("Cats purr")
    }
}

//•    Create an instance of class ‘Cat’ and class ‘Dog’.
let dog1 = Dog()
let cat1 = Cat()

//•    Print the makeNoise function from each of these instances.
dog1.makeNoise()
cat1.makeNoise()

//•    Print if each of these instances is an instance of class ‘Animal’.
//let t = type(of: dog1)
//print("instance dog1 is of type '\(t)'")
if (dog1 as? Animal) != nil{
    print("Yes, instance dog1 is an instance of class Animal");
}
else{
    print("No, instance dog1 is not an instance of classAnimal")
}
if  cat1 is Animal{
print("Yes, instance cat1 is an instance of class Animal");
}
else{
    print("No, instance cat1 is not an instance of classAnimal")
}
/****************Exercise: Swift Optionals***************/
print("****************Exercise: Swift Optionals**************")
//Ask the user their name, take an input using command line.
print("Please enter your name")
var name: String? = readLine()
//•    If no input was provided print ‘Welcome Anonymous User’
//•    If the input is all numbers print ‘Welcome Code Name ’ followed by the number
//•    Otherwise print ‘Welcome ’ followed by the String entered
var number = Int(name!)
if name!.isEmpty {
    print("Welcome Anonymous User")
}
else if(number != nil){
    print("Welcome Code Name \(number!)")
}
else{
    print("Welcome \(name!)")
}

