/*
 -----------------
 Function in Swift
 -----------------
 */

// #1
func greet(person: String) -> String {
    let greeting = "Hello, \(person)"
    return greeting
}
// For test
greet(person: "peter")


// #2
func multiply(a: Int, b: Int = 10) {
    print(a * b)
}
// For test
multiply(a: 5)


// #3 Argument lebals and parameter names
/*
 Argument label is the lebal before the input placeholder when you call the function to use, provide an readable, sentence-like manner.
 parameter names is the value name which input while calling function and operate inside the fuction itself.
 */
func move(from original: String, to destination: String) -> String {
    return "Move from \(original) to \(destination)."
}
let direction = move(from: "TPE", to: "HKG")
print(direction)
// "from" and "to" are argument lebals, for readable function.
// "original" and "destination" are parameter names to store value to operate inside function body.


// #4
/*
 func birthday() -> String {
 // return type: String
 }
 func payment() -> Double {
 // return type: Double
 }
 */




