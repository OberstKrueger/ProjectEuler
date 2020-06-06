extension UInt {
    var primeFactors: [UInt: UInt] {
        var counter: UInt = 3
        var factors: [UInt: UInt] = [:]
        var max: UInt = self

        // Reduces max to odd, counting up how many times 2 divides into it
        if max >= 2 {
            while max % 2 == 0 {
                max /= 2
                factors[2, default: 0] += 1
            }
        }

        // Odd-only numbers, as 2 is the only even prime number. Non-prime odd numbers will have been previously
        // disqualified due to their prime factors having previously been counted.
        while counter <= max {
            if max % counter == 0 {
                max /= counter
                factors[counter, default: 0] += 1
            } else {
                counter += 2
            }
        }

        return factors
    }
}
