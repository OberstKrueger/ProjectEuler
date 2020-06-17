//
//  ProjectEulerTests.swift
//  ProjectEulerTests
//
//  Created by krueger on 2020-05-25.
//  Copyright © 2020 Paul Krueger. All rights reserved.
//

import XCTest
@testable import ProjectEuler

class ProjectEulerTests: XCTestCase {
    // Problem testing
    func testProblems() {
        XCTAssertEqual(Problem0001(10), 23)
        XCTAssertEqual(Problem0002(100), 44)
        XCTAssertEqual(Problem0003(13_195), 29)
        XCTAssertEqual(Problem0004(99), 9009)
        XCTAssertEqual(Problem0005(10), 2520)
        XCTAssertEqual(Problem0006(10), 2640)
    }

    // Helper function testing
    func testIsPrime() {
        for number: UInt in 0...100 {
            let primes: [UInt] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
            XCTAssertEqual(number.isPrime, primes.contains(number))
        }
        XCTAssertEqual(UInt(4_294_967_291).isPrime, true)
        XCTAssertEqual(UInt(4_294_967_311).isPrime, true)
    }

    func testPower() {
        XCTAssertEqual(UInt(2).power(by: 2), 4)
        XCTAssertEqual(UInt(3).power(by: 5), 243)
        XCTAssertEqual(UInt(20).power(by: 4), 160_000)
    }

    func testPrimeFactors() {
        let factor_0: [UInt: UInt] = [:]
        let factor_1: [UInt: UInt] = [:]
        let factor_2: [UInt: UInt] = [2: 1]
        let factor_3: [UInt: UInt] = [3: 1]
        let factor_10: [UInt: UInt] = [2: 1, 5: 1]
        let factor_7_919: [UInt: UInt] = [7_919: 1]
        let factor_720_720: [UInt: UInt] = [2: 4, 3: 2, 5: 1, 7: 1, 11: 1, 13: 1]

        XCTAssertEqual(UInt(0).primeFactors, factor_0)
        XCTAssertEqual(UInt(1).primeFactors, factor_1)
        XCTAssertEqual(UInt(2).primeFactors, factor_2)
        XCTAssertEqual(UInt(3).primeFactors, factor_3)
        XCTAssertEqual(UInt(10).primeFactors, factor_10)
        XCTAssertEqual(UInt(7_919).primeFactors, factor_7_919)
        XCTAssertEqual(UInt(720_720).primeFactors, factor_720_720)
    }
}
