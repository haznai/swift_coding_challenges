// **** Challenge 8 ****
// “Write a function that accepts two strings, and returns true if one string
// is rotation of the other, taking letter case into account”

import Foundation

// Tuple of (original string, compared string, isrotated)
typealias inputType = (String, String, Bool)
let inputs: [inputType] = [
    ("abcde", "eabcd", true),
    ("abcde", "cdeab", true),
    ("abcde", "abced", false),
    ("abc", "a", false)]
     
func challenge08(input: inputType) -> Bool
{
    // appends the original string with itself
    // string now contains all possible rotation scenarios
    let rotatedString = input.0 + input.0
    
    if input.1.count == input.0.count
        && rotatedString.contains(input.1)
    {
        return true
    }
    
    return false
}

challenge08(input: inputs[0])

