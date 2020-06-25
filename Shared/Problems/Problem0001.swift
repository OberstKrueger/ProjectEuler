/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these
 multiples is 23.

 Find the sum of all the multiples of 3 or 5 below 1000.

 */

func Problem0001(_ input: UInt = 1_000) -> UInt {
    let three = stride(from: 3, to: input, by: 3).reduce(0, +)
    let five = stride(from: 5, to: input, by: 5).reduce(0, +)
    let fifteen = stride(from: 15, to: input, by: 15).reduce(0, +)

    return three + five - fifteen
}
