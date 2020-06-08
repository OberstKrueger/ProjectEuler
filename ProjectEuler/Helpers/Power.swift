extension UInt {
    func power(by: UInt) -> UInt {
        if by <= 0 { return 1 }

        var counter = by
        var result = self

        while counter > 1 {
            counter -= 1
            result *= self
        }

        return result
    }
}
