/*

 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

 Find the sum of all the primes below two million.

 */

func Problem0010(_ input: UInt = 2_000_000) -> UInt {
    return primeSieve(input - 1).reduce(0, +)
}
