// **** Challenge 7 ****
// “Write a function that returns a string with any consecutive space
// are replaced with a single space.”
import Foundation

// dict is [input: expected output of function]
let inputDict = ["a   b   c": "a b c",
                 "    a":" a",
                 "abc":"abc"]

// solution with regular expressions, slow but effective
func challenge07(_ input: String) -> String
{
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}

func assertChallenge07(_ inputDict: [String:String])
{
    for (input, expectedOutput) in inputDict
    {
        assert(challenge07(input) == expectedOutput,
               "Function failed for following input: \(input)")
    }
    print("Function is correct for the given inputs!")
}

assertChallenge07(inputDict)
