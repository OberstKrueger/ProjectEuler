/*
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is
 9009 = 91 × 99.

 Find the largest palindrome made from the product of two 3-digit numbers.

 */

func Problem0004(_ input: UInt = 999) -> UInt {
    var result: UInt = 0

    while result == 0 {
        for firstNumber: UInt in stride(from: input, to: 1, by: -1) {
            if firstNumber * firstNumber < result {
                break
            }
            for secondNumber: UInt in stride(from: firstNumber, to: 1, by: -1) {
                let testNumber: UInt = firstNumber * secondNumber
                if testNumber > result && String(testNumber) == String(String(testNumber).reversed()) {
                    result = testNumber
                }
            }
        }
    }

    return result
}
