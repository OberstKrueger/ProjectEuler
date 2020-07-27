// Not a sieve, but adaquate for problem 10. Will be replaced at a later date with an actual proper solution.
func primeSieve(_ number: UInt) -> [UInt] {
    var primes: [UInt] = []

    for number in 2...number {
        if number.isPrime { primes.append(number) }
    }

    return primes
}
