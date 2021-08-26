// **** Challenge 3 ****
// Write a function that accepts two String parameters, and returns true if
// they contain the same characters in any order taking into account letter
// case.

// input string tuple is the key and the values are the
// correct return booleans
let challenge03Input = [["abca", "abca"]:true,
                        ["abc", "cba"]: true,
                        ["a1 b2", "b1 a2"]: true,
                        ["abc", "abca"]: false,
                        ["abc", "Abc"]: false,
                        ["abc", "cbAa"]: false,
                        ["abcc", "abca"]: false
                        ]

// O(n * logn) runtime
func challenge03(_ inputs: [String]) -> Bool
{
    assert(inputs.count == 2, "challenge requires exactly 2 input strings")
    let sortedInputs = inputs.map{$0.sorted()}
    
    if sortedInputs.first == sortedInputs.last
    {
        return true
    }
    else
    {
        return false
    }
}

func assertChallenge03(_ inputDict: [[String]: Bool])
{
    for (input, correctBool) in inputDict
    {
        assert(challenge03(input) == correctBool, "Function is not correct at these inputs: \(input)")
    }
    print("Function is correct for the given inputs!")
}

assertChallenge03(challenge03Input)

