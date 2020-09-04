struct collatzCount {
    var counts: [UInt: UInt] = [1:1]

    mutating func count(_ input: UInt) -> UInt {
        if counts.keys.contains(input) == false {
            if input.isMultiple(of: 2) {
                counts[input] = count(input / 2) + 1
            } else {
                counts[input] = count(((3 * input) + 1) / 2) + 2
            }
        }

        return counts[input, default: 0]
    }

    mutating func sequence(_ input: UInt) -> [UInt] {
        var number: UInt = input
        var output: [UInt] = [input]

        while number != 1 {
            if number.isMultiple(of: 2) {
                number = number / 2
            }
            else {
                number = (3 * number) + 1
            }
            
            output.append(number)
        }

        let count = UInt(output.count)
        if counts.keys.contains(count) == false {
            counts[input] = count
        }

        return output
    }
}
