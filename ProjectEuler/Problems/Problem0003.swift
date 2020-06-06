/*
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number 600851475143 ?

 */

func Problem0003(_ input: UInt = 600_851_475_143) -> UInt {
    return input.primeFactors.keys.sorted(by: >)[0]
}
