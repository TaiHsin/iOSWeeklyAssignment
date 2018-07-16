/*
 -----------
 SwiftBasics
 -----------
 */


// #1
let pi: Double = 3.14159265


// #2
let x: Int = 20
let y: Int = 14

let average: Int = (x + y) / 2


// #3 Type Conversion

// Please solve this problem so that we can put the average in the record system.
let recordSystem: Double = Double(average)

// Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).

/*
 (10 / 3) data type is Integer, the result won't show number after decimal point but only 3
 (10.0 / 3.0) data type is Double, the result will show max 64-bit floating point before/ after decimal point 3.3333...
 */
let i: Int = 10 / 3       // result = 3
let d: Double = 10.0/3.0  // result = 3.3333333...


// #4 Type Inference
var flag: Bool = true
var inputString: String = "Hello, world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8


// #5 Compound Assignment
var salary: Int = 22000
salary += 28000


// #6 Equality Operator
// Equality operator in swift is "=="


// #7 Remainder
let a: Int = 10
let b: Int = 3
let remain = 10 % 3


// #8 Data Yype: constant and variable
/*
 "let" data type is constant, is immutable which means it cannot be re-assigned or changed the value once it's declared.
 "var" data type is variable, is mutable which means it alwasy can be changed the value after declared.
 */


// #9 Naming Conventions and rules
/*
 # No whitespaces
 # Don't start with a number
 # Use camel case
 # No special characters
 # No mathematical symbols
 */




