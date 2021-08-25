// **** Challenge 2: Is a string a palindrome? ****
// Write a function that accepts a String as its only parameter
// and returns true if the string reads the same when reversed, ignoring case

// input is a dictionary with input string as the key and
// a boolean signlaing if its a palindrome
let challenge02Input = ["rotator": true,
                       "Rats live on no evil star": true,
                       "Never odd or even": false,
                       "Hello, world":false]

// O(n) linear runtime easy solution
func challenge02Easy(_ input: String) -> Bool
{
    // case not important for challenge
    let lowercasedInput = input.lowercased()
    return String(lowercasedInput.reversed()) == lowercasedInput
}

// recursive solution
// overloaded functions so the function call stays pass by value,
// not pass by reference
public func challenge02Recursive(_ input: String) -> Bool
{
    var tempInput = input.lowercased()
    return challenge02Recursive(&tempInput)
}
private func challenge02Recursive(_ input: inout String) -> Bool
{
    if input.count <= 1
    {
        return true
    }
    
    if input.popLast()! != input.removeFirst()
    {
        return false
    }
    
    return challenge02Recursive(&input)
}

func assertChallenge02(_ inputDict: [String:Bool], _ solutionFunction: (String) -> Bool )
{
    for (input, isPalindrome) in inputDict
    {
        assert(solutionFunction(input) == isPalindrome, "Function is not correct at this input: \(input)")
    }
    print("Function is correct for the given inputs!")
}

assertChallenge02(challenge02Input, challenge02Easy)
assertChallenge02(challenge02Input, challenge02Recursive)

