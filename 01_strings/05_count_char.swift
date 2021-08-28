// **** Challenge 5 ****
// “Write a function that accepts a string, and returns how many times
// specific character appears, taking case into account.”

import Foundation

// input is composed of
// (input String, Character that is counted, actual count of Character)
typealias inputType = [(String, Character, Int)]
let inputTuple: inputType = [
    ("The rain in Spain", "a", 2),
    ("Mississippi","i", 4),
    ("Hacking with Swift", "i", 3)
    ]

func challenge05(_ input: String, countThis count: Character) -> Int
{
    return input.reduce(0)
    {
        $1 == count ? $0 + 1 : $0
    }
}

func assertChallenge05(inputTuple: inputType)
{
    for (input, countChar, count) in inputTuple
    {
        assert(challenge05(input, countThis: countChar) == count, "Function failed at following string input: \(input)")
    }
    
    print("Function is correct for given input!")
}

assertChallenge05(inputTuple: inputTuple)
