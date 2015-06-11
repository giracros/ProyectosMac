//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var c = 3.3
var d = "Resultado"
var f = 321.3
//------ Inicio Tutorial ...... --- ///
var myVariable = 42
myVariable = 50
let myConstant = 42
////////////////////////////////////////////////////////////////////////////////
let implicitInteger = 70
let implicitDouble = 723.5
let explicitDouble: Double = 7012312332.456
////////////////////////////////////////////////////////////////////////////////
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
////////////////////////////////////////////////////////////////////////////////
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
////////////////////////////////////////////////////////////////////////////////
let optionalInt: Int? = 9
////////////////////////////////////////////////////////////////////////////////
let actualInt: Int = optionalInt!
////////////////////////////////////////////////////////////////////////////////
var myString = "7"
var possibleInt = String(myString)
print(possibleInt)
////////////////////////////////////////////////////////////////////////////////
myString = "banana"
possibleInt = String(myString)
print(possibleInt)
////////////////////////////////////////////////////////////////////////////////
var ratingList = ["Caso1", "Caso2", "Caso3", "Caso4"]
ratingList[1] = "ElColado"
ratingList
////////////////////////////////////////////////////////////////////////////////
let emptyArray = [String]()
////////////////////////////////////////////////////////////////////////////////
var implicitlyUnwrappedOptionalInt: Int!
////////////////////////////////////////////////////////////////////////////////
let number = 199
if number < 10 {
    print("The number is small")
} else if number > 100 {
    print("The number is pretty big")
} else {
    print("The number is between 10 and 100")
}
////////////////////////////////////////////////////////////////////////////////
let individualScores = [1, 2, 3, 4, 5]
var teamScore = 0
for score in individualScores {
    if score > 3 {
        teamScore += 1
    } else {
        teamScore += 1
    }
}
print(teamScore)
////////////////////////////////////////////////////////////////////////////////
var optionalName: String? = "Daniel Fuentes"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hola, \(name)"
}
////////////////////////////////////////////////////////////////////////////////
var optionalHello: String? = "A"
if let hello = optionalHello where hello.hasPrefix("A"), let name = optionalName {
    greeting = "\(hello), \(name)"
}
////////////////////////////////////////////////////////////////////////////////
let vegetable = "red pepper"

switch vegetable {

case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."

case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."

case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"

default:
    let vegetableComment = "Everything tastes good in soup."
}
////////////////////////////////////////////////////////////////////////////////
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)
////////////////////////////////////////////////////////////////////////////////
var secondForLoop = 0
for _ in 0...4 {
    secondForLoop += 1
}
print(secondForLoop)
////////////////////////////////////////////////////////////////////////////////
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Daniel","Saturday")
////////////////////////////////////////////////////////////////////////////////
let exampleString = "hello"
if exampleString.hasSuffix("lo") {
    print("ends in lo")
}
////////////////////////////////////////////////////////////////////////////////
var array = ["apple", "banana", "dragonfruit"]
array.insert("cherry", atIndex: 3)
array
////////////////////////////////////////////////////////////////////////////////
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
////////////////////////////////////////////////////////////////////////////////
var shape = Shape()
shape.numberOfSides = 90
var shapeDescription = shape.simpleDescription()
////////////////////////////////////////////////////////////////////////////////
class NamedShape {
    var numberOfSides = 0
    var name: String = "Daniel"

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
////////////////////////////////////////////////////////////////////////////////
let namedShape = NamedShape(name: "my named shape")
////////////////////////////////////////////////////////////////////////////////
class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() ->  Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let testSquare = Square(sideLength: 90, name: "my test square")
testSquare.area()
testSquare.simpleDescription()
////////////////////////////////////////////////////////////////////////////////
class Circle: NamedShape {
    var radius: Double

    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }

    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}
let successfulCircle = Circle(radius: 4.2, name: "successful circle")
let failedCircle = Circle(radius: -7, name: "failed circle")
////////////////////////////////////////////////////////////////////////////////
class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle1"), Triangle(sideLength: 4.2, name: "triangle2"), Square(sideLength: 3.2, name: "square1"), Square(sideLength: 2.7, name: "square1")]
var squares = 0
var triangles = 0
for shape in shapesArray {
    if let square = shape as? Square {
        squares++
    } else if let triangle = shape as? Triangle {
        triangles++
    }
}
print("\(squares) squares and \(triangles) triangles.")
////////////////////////////////////////////////////////////////////////////////
enum Rank: Int {
    case Ace = 3
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
////////////////////////////////////////////////////////////////////////////////
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}
////////////////////////////////////////////////////////////////////////////////
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
////////////////////////////////////////////////////////////////////////////////
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

////////////////////////////////////////////////////////////////////////////////
protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}
////////////////////////////////////////////////////////////////////////////////
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
////////////////////////////////////////////////////////////////////////////////
class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another very simple class."
    func adjust() {
        simpleDescription += "  Adjusted."
    }
}

var protocolArray: [ExampleProtocol] = [SimpleClass(), SimpleClass(), SimpleClass2()]
for instance in protocolArray {
    instance.adjust()
}
protocolArray
////////////////////////////////////////////////////////////////////////////////
let redSquare = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
redSquare.backgroundColor = UIColor.blueColor()
