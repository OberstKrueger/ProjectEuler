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
    func testProblem0001() {
        XCTAssertEqual(Problem0001(10), 23)
    }

    func testProblem0002() {
        XCTAssertEqual(Problem0002(100), 44)
    }
}
