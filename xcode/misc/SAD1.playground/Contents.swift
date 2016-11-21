//Activity 1
print ("hello world")

//Activity 2
let implicitinteger = 70
let implicitdouble = 70.0
let explicitdouble: Double = 70

//Activity 3
let label = "the width is "
let width = 94
let widthLabel = label + String(width)
//binary operator '+' cannot be applied to operands of type 'String' and 'Int'

//Activity 4
let name = "tony"
let age = 10
let age1 = 20
let greeting = "hello my name is \(name) nice to meet you"
let greeting1 = "hello my name is \(name) i am \(age + age1) years old"

//Activity 5
var optionalString: String? = "hello"
print(optionalString == nil)

var optionalName: String? = "john appleseed"
var Greeting = "hello"
if let name = optionalName  {
    Greeting = "hello, \(name)"
}

//Activity 6

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("that would make a good tea sandwitch")
    case let x where x.hasSuffix("pepper"):
        print("it is a spicy \(x)")
    default:
        print("everything tastes good in soup")
}

//switch must be exhaustive, consider adding a default clause

//Activity 7
let interestingNumbers = [
    "prime": [2, 3, 5, 7, 11, 13],
    "fibonacci": [1, 1, 2, 3, 5, 8],
    "square": [1, 4, 9, 16, 25],
]
var largest = 0
var biggest = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            biggest = kind
        }
    }
}
print (largest, biggest)
