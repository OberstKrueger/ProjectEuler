/*
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

 a^2 + b^2 = c^2

 For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.

 */

func Problem0009(_ input: UInt = 1_000) -> UInt {
    let halfInput: UInt = input / 2

    for firstNumber in 1..<input {
        for secondNumber in (firstNumber + 1)...input {
            if secondNumber * (firstNumber + secondNumber) == halfInput {
                return (2 * firstNumber * secondNumber) *
                    ((secondNumber ^ 2) - (firstNumber ^ 2)) *
                    ((firstNumber ^ 2) + (secondNumber ^ 2))
            }
        }
    }

    return 0
}
