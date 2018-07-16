// ===============================================
// ---------- Objective-Oriented Swift -----------
// ===============================================

// #1 Class

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    init (gender: Gender) {
        self.gender = gender
        // property   parameter
    }
    
    func eat () {
        print("I eat everything!")
    }
}
let animal = Animal(gender: Gender.male)
animal.eat()


// #2 Inheritance

class Elephant: Animal {
    override func eat() {
        print("I eat grasses!")
    }
}
let elephant = Elephant(gender: Gender.female)
elephant.eat()

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}
let tiger = Tiger(gender: Gender.undefined)
tiger.eat()

class Horse: Animal {
    override func eat() {
        print("I eat grasses!")
    }
}
let horse = Horse(gender: Gender.undefined)
horse.eat()


// #3

class Zoo {

    var weeklyHot: Animal
    
    init (weeklyHot: Animal ) {
        self.weeklyHot = weeklyHot
    }
}
let zoo1 = Zoo(weeklyHot: tiger)
zoo1.weeklyHot
let zoo2 = Zoo(weeklyHot: elephant)
zoo2.weeklyHot
let zoo3 = Zoo(weeklyHot: horse)
zoo3.weeklyHot



/*
 
// #4 What have you learned in ​Object-Oriented Swift​ session ?

 Structure & Class' definition
 Instance of structure and class
 Initialization of structure and class
 Class can inheritance to subclass
 Use "override" to override method in class


 
// #5 What is the difference between ​Struct​ and ​Class​ ?
 - Struct is a value type but class is a reference type
 - Class can have subclass to inheritant it's characteristics and we can re-write or override base class' (or super class) value or methods.
 - Struct has memberwise initializer which means it will automatically initialize property with default valu.
 - Class need to manual assign default value by assign value to property directly or with initializer clause.

 

// #6 What is the difference between ​instance method​ and ​type method​ ?

 Instance Method is the function which associated with instance, the define syntax just exactly same with function.
 You only can call instance method once you have create an instance of class/ structure.
 
 Type Method is the function associated to the class/ structure type itself.
 We use keyword "class" in class for type method, add keyword "static" before method func. in structure.
 the type method can be call directly by dot.syntax without creating an instance.
 

 
// #7 What does ​Initializer​ do in class(struct) ?

 Unlike structure, class don't have the automatically-generated memberwise initializer,
 you need to manually use initializer to initialize properties' default value.
 


// #8 What does ​self​ means in instance method ?

 The self property in instance method means exactly itself's property,
 when initailize stored propery in class with the same argument parameter, you need to explicity add self. before instance property
 to distinguish between parameter name and property name.


 
// #9 What is the difference between ​reference type​ and ​value type​ ?

 Reference Type: ex. class
 The instances of class (reference type) are use the same reference/ instance value.
 That means if we change value of an instanceTwo's property, the instanceOne property's value also changed.
 
 Value Type: ex. structure, enumerations...
 For value type, we'll get a copy of value when creating every instance (even they have same value ).
 The created instance's property cannot be changed due to it's a copy valu.
 
 Note. Integer, floating[point, array, dictionary... are all value types, and are implemented as structures behind the scenes.
 
*/




// ===============================================
// -----Enumerations and Optionals in Swift ------
// ===============================================

// #1 Enumerations

enum Gasoline: String {
    case ninetyTwo = "92"
    case ninetyFive = "95"
    case ninetyEight = "98"
    case diesel = "diesel"
    
    func getPrice(gasType: String) -> String {
        switch self {
        case .ninetyTwo: return "Gas92 price is 25"
        case .ninetyFive: return "Gas95 price is 28"
        case .ninetyEight: return "Gas98 price is 31"
        case .diesel: return "GasDiesel price is 23"
        }
    }
}

Gasoline.ninetyTwo.rawValue


// Enumeration with Associate Value

// The enumeration associate value is the value of other type that stored after/ outside the enumeration clause.
// Each case can store different types with other custom information.
// To store associate value, you need to create enum menber case with argument declaration and assign other constant/ variable after that to assign associate value.


enum Vehicle {
    case car(String)
    case bike(String)
    case bus(Int)
}
let carType = Vehicle.car("Vovol")
let busNumver = Vehicle.bus(12)


// #2 Optional Chaining

class Pet {
    var name: String?

}

class People {
    var pet: Pet?
}

let people = People()
let pet = Pet()
pet.name = "Miki"
people.pet = pet


// Unwrapping with guard     ?????????????????????????

func testGuard () {
    guard let tai = people.pet, let petsName = tai.name else {
        return
    }
    print("\(petsName)")
}

//func testGuard () {
//    guard let tai = people.pet else {
//        print("You have no pet!")
//        return
//    }
//    guard let petsName = tai.name else {
//        print("No name of pets")
//        return
//    }
//    print("\(petsName)")
//}

testGuard()



if let name = people.pet?.name {
    print(name)
}

// Optional unwrapping by if let

let person = People()
person.pet = pet

if let rae = person.pet, let kitty = rae.name {
    print(kitty)
}

if let name = person.pet?.name {
    print(name)
}



// ===============================================
// -------------- Protocol in Swift --------------
// ===============================================

// #1 - #6

protocol PoliceMan {
    func arrestCriminals ()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan  {
    var name:String
    var toolMan: ToolMan

    func arrestCriminals () {
    }

}

struct Engineer: ToolMan {

    func fixComputer() {
    }
}

let engineer = Engineer()
let personName = Person(name: "Steven", toolMan: engineer)



// ===============================================
// ---------- Erro Handling in Swift -------------
// ===============================================

// #1, #2

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

let guessNumber = GuessNumberGame()
try guessNumber.guess(number: 20)
















































