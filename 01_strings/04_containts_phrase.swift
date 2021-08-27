// **** Challenge 4 ****
// “Write your own version of the contains() method on String that
// ignores letter case, and without using the existing contains() method.”

import Foundation

// array where each element is the input tuple
// input: String, phrase: String, phrase in input?: Bool
let inputTuple: [(String, String, Bool)] = [
    ("Hello, World", "Hello", true),
    ("Hello, World", "WORLD", true),
    ("Hello, World", "Goodbye", false),
]

// extend string so you can call function on it input directly
extension String
{
    func challenge04(_  inputPhrase: String) -> Bool
    {
        // case doesn't matter for the challenge
        let compareString = self.lowercased()
        let input = inputPhrase.lowercased()
        
        return compareString.range(of: input) != nil
    }
}

func assertChallenge04(_ inputTuple: [(String, String, Bool)])
{
    for (inputString, inputPhrase, correctBool) in inputTuple
    {
        assert(inputString.challenge04(inputPhrase) == correctBool,
               "Function returned wrong result at inputString: \(inputString) and inputPhrase: \(inputPhrase)")
    }
    
    print("Function is correct for the given inputs!")
}

assertChallenge04(inputTuple)
