/*

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

*/

import Foundation

func Problem0016(_ input: UInt = 1_000) -> UInt {
    var carryOver: UInt8 = 0
    var digits: [UInt8] = [1]

    for _ in 1...input {
        for index in 0..<digits.endIndex {
            digits[index] = (digits[index] * 2) + carryOver
            if digits[index] >= 10 {
                digits[index] -= 10
                carryOver = 1
            } else {
                carryOver = 0
            }
        }
        if carryOver > 0 {
            digits.append(carryOver)
            carryOver = 0
        }
    }

    return digits.reduce(0, {$0 + UInt($1)})
}
