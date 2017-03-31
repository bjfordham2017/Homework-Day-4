func strtupzer(input: String) -> String {
    var printVowel: Bool = false
    var array: [Character] = []
    func isVowel(letter: Character) -> Bool {
        switch letter {
        case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
            return true
        default:
            return false
        }
    }
    
    for character in input.characters {
        if !isVowel(letter: character)
        {array.append(character)
        } else if isVowel(letter: character) == true && printVowel == false {
            printVowel = true}
        else if isVowel(letter: character) == true && printVowel == true {
            array.append(character)
            printVowel = false
        }
    }
    return String(array)
}

strtupzer(input: "cupcake") == "cpcak"
strtupzer(input: "Martian") == "Mrtin"
strtupzer(input: "antiquarian") == "ntiqaran"

