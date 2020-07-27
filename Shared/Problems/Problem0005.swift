/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

 */

func Problem0005(_ input: UInt = 20) -> UInt {
    var result: UInt = 1
    var primeFactors: [UInt: UInt] = [:]

    for number in 2...input {
        if number.isPrime {
            primeFactors[number] = 1
        } else {
            for (key, value) in number.primeFactors {
                if primeFactors[key, default: 0] < value {
                    primeFactors[key] = value
                }
            }
        }
    }
    for (key, value) in primeFactors {
        result *= key ^ value
    }

    return result
}
