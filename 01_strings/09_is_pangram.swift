// **** Challenge 9 ****
//“Write a function that returns true if it is given a string that is an
// English pangram, ignoring letter case.”

import Foundation

// input strings and pangram boolean
let inputs: [(String, Bool)] = [
    ("The quick brown fox jumps over the lazy dog", true),
    ("The quick brown fox jumped over the lazy dog", false)
]

func challenge09(_ input: String) -> Bool
{
    // turn string into a set of chars
    let charSet: Set<Character> = Set(input)
    
    // you can do arithmetic on chars
    // filter chars based on if they are in the english alphabet or not
    let letters = charSet.filter {  "a" <= $0 && $0 <= "z" }
    
    return letters.count == 26
}

func assertChallenge09(_ inputs: [(String, Bool)])
{
    for (input, expectedOutput) in inputs
    {
        assert(expectedOutput == challenge09(input.lowercased()), "Function faled for following input: \(input)")
    }
    print("Function is correct for given inputs!")
}

assertChallenge09(inputs)
