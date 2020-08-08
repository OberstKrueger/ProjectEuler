extension UInt {
    var factorCount: UInt {
        if self <= 0 { return 0 }

        return self.primeFactors.reduce(1, {$0 * ($1.value + 1)})
    }
}
