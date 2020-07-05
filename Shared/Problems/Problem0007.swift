/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

 What is the 10 001st prime number?

 */

func Problem0007(_ input: UInt = 10_001) -> UInt {
    var counter: UInt = 0
    var number: UInt = 1

    while counter < input {
        number += 1
        if number.isPrime { counter += 1 }
    }

    return number
}
