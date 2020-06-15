import UIKit
/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit
/*:
 ### Functions
 Functions are self-contained chunks of code (Like a Lego block) that perform a specific task.
 
 You need to do 5 things for a Function to work
 
 - You give your function a *name*
 - You pass it a *parameter or parameters* and specify its/their *type* (ie Int, String, Float etc)
 - You do something to or with the *parameter* between the *{ } squiggles*
 - You *return* the result of your actions
 - You *call* the Function you just made to use it in your code
 ### Examples
 - The function below is named *greet*
 - Your *parameter* is called *person* of type String
 - Your Function creates a greeting between the *{ } squiggles*
 - It *returns* a greeting and inserts the name you provided in the message
 */
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Jacob"))
/*:
 - The Function below is called *minMax*
 - This Function finds the smallest and largest numbers in an array of Int values
 - This Function returns multiple values into one data type called a *Tuple*
 */
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
/*:
 - The code below defines a *constant* named bounds which is set to the values loaded into the array called *minMax*
 - Because the *Tuple*’s member values are named as part of the function’s return type, they can be accessed with dot syntax
 */
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109"
