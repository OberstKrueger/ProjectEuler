extension UInt {
    static func ^(lhs: UInt, rhs: UInt) -> UInt {
        if rhs <= 0 { return 1 }

        var counter = rhs
        var result = lhs

        while counter > 1 {
            counter -= 1
            result *= lhs
        }

        return result
    }
}
