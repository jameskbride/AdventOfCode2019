//
//  AdventOfCodeTests.swift
//  AdventOfCodeTests
//
//  Created by James Kirkbride on 12/1/19.
//  Copyright © 2019 James Kirkbride. All rights reserved.
//

@testable import AdventOfCode

import XCTest

class AdventOfCodeTests: XCTestCase {

    func testGivenLowEndMassItCalculatesTheFuelRequirement() {
        let fuel = calculateFuel(mass: 6)
        
        XCTAssertEqual(fuel, 1)
    }

}
