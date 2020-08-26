/*

Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

*/

import Foundation

func Problem0013(_ input: [String] = ProblemData().p013_input) -> String {
    let output: String = input.reduce(Decimal(0), {$0 + Decimal(string: $1)!}).description
    return output.prefix(10).description
}

