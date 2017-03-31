enum Answer: Equatable {
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz), (.buzz, .buzz), (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let leftNum), .number(let rightNum)):
            return leftNum == rightNum
        default:
            return false
        }
    }
}

//FizzBuzz with "if" statemnts
func transform(n: Int) -> Answer {
    if n % 3 == 0 && n % 5 != 0 {
        return .fizz
    } else if n % 3 != 0 && n % 5 == 0 {
        return .buzz
    } else if n % 3 == 0 && n % 5 == 0 {
        return .fizzBuzz
    } else {return .number(n)}
}

transform(n: 2) == .number(2)
transform(n: 5) == .buzz
transform(n: 3) == .fizz
transform(n: 15) == .fizzBuzz
transform(n: 77) == .number(77)
transform(n: 9000) == .fizzBuzz

func multThree(n: Int) -> Bool {
    if n % 3 == 0 {return true
    } else {return false}
}

func multFive(n: Int) -> Bool {
    if n % 5 == 0 {return true
    } else {return false}
}

func transform2(n: Int) -> Answer {
    if multThree(n: n) && !multFive(n: n) {return .fizz
    } else if !multThree(n: n) && multFive(n: n) {return .buzz
    } else if multThree(n: n) && multFive(n: n) {return .fizzBuzz
    } else {return .number(n)}
}

transform2(n: 2) == .number(2)
transform2(n: 3) == .fizz
transform2(n: 5) == .buzz
transform2(n: 15) == .fizzBuzz
transform2(n: 77) == .number(77)
transform2(n: 9000) == .fizzBuzz

