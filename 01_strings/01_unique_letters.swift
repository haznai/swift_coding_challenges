// Write a function that accepts a String as its only
// parameter, and returns true if the string has
// only unique letters, taking letter case into account

let inputs = ["No duplicates":true,
              "abcdefghijklmnopqrstuvwxyz":true,
              "AaBbCc":true,
              "Hello, World":false]

// O(n^2) runtime
func isUniqueSquared(_ input: String) -> Bool
{
    for i in input.indices
    {
        let char = input[i]
        // checks if there is another char with a different index
        if input.lastIndex(of: char)! != i
        {
            return false
        }
    }
    return true
}

// O(n) runtime
func isUniqueLinear(_ input: String) -> Bool
{
    return Set(input).count == input.count
}

// asserting correctness of the functions
for (inputString, expectedResult) in inputs
{
    assert(isUniqueSquared(inputString) == expectedResult, "\(inputString) is not parsed correctly by isUniqueSquared()")
    
    assert(isUniqueLinear(inputString) == expectedResult, "\(inputString) is not parsed correctly by isUniqueLinear()")
}

print("Passed coding challenge!")


