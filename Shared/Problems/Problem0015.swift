/*

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6
routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

*/

func Problem0015(_ input: UInt = 20) -> UInt {
    return (1...input).reduce(1, {$0 * (input + $1) / $1})
}
