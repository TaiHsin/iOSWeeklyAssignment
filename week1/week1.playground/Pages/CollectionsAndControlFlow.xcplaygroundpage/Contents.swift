/*
 -----
 Array
 -----
 */


// #1
var myFriends = [String]()


// #2
myFriends = ["Ian", "Bomi", "Kevin"]


// #3
myFriends.append("Michael")


// #4
myFriends.insert("Kevin", at: 0)
myFriends.remove(at: 3)
myFriends


// #5
for name in myFriends {
    print(name)
}

// #6
/*
 Since the array only contain 4 values (index from 0 to 3), so there's no index 5 value of myFriends' array.
 The index 5 is out of this array's range and it may cause crash with fatal error.
 */


// #7
// The first element in an array should always use with index[0], not [1]
let firstFriends = myFriends.first


// #8
// The last element in an array should always use with index[n-1], not [n]
let lastFriends = myFriends.last


/*
 ----------
 Dictionary
 ----------
 */

// #1
var myCountryNumber = [String: Int]()


// #2
myCountryNumber = ["US": 1, "GB": 44, "JP": 81]


// #3
myCountryNumber.updateValue(0, forKey: "GB")
myCountryNumber


// #4
/*
 You can only declare an empty dictionary with explicity key and value's type.
 Below shows myPets is an empty [Int: String] dictionary
 */
var myPets = [Int: String]()
myPets = [:]


/*
 ------------------
 For, While, Repeat
 ------------------
 */

// #1 For in loop
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for numbers in lottoNumbers[3...5] {
    print(numbers)
}


// #2 For in loop

// List by interval = -1
for g in stride(from: 5, to: -1, by: -1) {
    
    print(lottoNumbers[g])
}

// List by interval = 2

for h in stride(from: 0, to: 5, by: 2) {
    print(lottoNumbers[h])
}


// #3 While loop

// List by interval = -1
var i = 5
while i >= 0 {
    print(lottoNumbers[i])
    i += -1
}

// List by interval = 2
var j = 0
while j <= 5 {
    print(lottoNumbers[j])
    j += 2
}


// #4 Repeat-While loop

// List by interval = -1
var n = 5
repeat {
    print(lottoNumbers[n])
    n += -1
} while n >= 0

// List by interval = 2
var m = 0
repeat {
    print(lottoNumbers[m])
    m += 2
} while m <= 5


/*
 ------------
 If statement
 ------------
 */

// #1

var isRaining = true

if isRaining  {
    print("It's raining, I don't want to work today.")
} else {
    print("Although it's sunny, I still don't want to work today.")
}



/*
 ------------
 Switch
 ------------
 */

// #1
/*
 1, member
 2, Team Leader
 3, Manager
 4, Director
 */

var jobLevel = 3

switch jobLevel {
case 1: print("member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default: print("We don't have this job")
}

