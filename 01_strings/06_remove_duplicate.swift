// **** Challenge 6 ****
// “Write a function that accepts a string as its input,
// and returns the same string just with duplicate letters removed.”

// dict interpretable as [input string:output of the function]
let inputDict = ["wombat":"wombat",
                 "hello":"helo",
                 "Mississippi": "Misp"]

func challenge06(_ input: String) -> String
{
    // save the input and create a set that keeps track of
    // the characters already seen in the string
    var seenChars = Set<Character>()
    
    // returns a filtered string containing no duplicates
    // this works because the .update() method returns nil if the element
    // was not in the set
    return input.filter { seenChars.update(with: $0) == nil }
}

func assertChallenge06(for InputDict: [String:String])
{
    for (inputString, outputString) in InputDict
    {
        assert(challenge06(inputString) == outputString, "Function failed for following input: \(inputString)")
    }
    print("Function is correct for the given inputs!")
}

assertChallenge06(for: inputDict)
