extension UInt {
    var isPrime: Bool {
        if self <= 1 { return false }
        if self % 2 == 0 { return self == 2 }
        if self % 3 == 0 { return self == 3 }
        let r: UInt = UInt(Double(self).squareRoot())
        var f: UInt = 5
        while f <= r {
            if self % f == 0 || self % (f + 2) == 0 { return false }
            f += 6
        }
        return true
    }
}
