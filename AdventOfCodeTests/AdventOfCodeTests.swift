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
        let fuel = calculateFuel(masses: [9])
        
        XCTAssertEqual(fuel, 1)
    }
    
    func testGivenALargerMassItCalculatesTheFuelRequirement() {
        let fuel = calculateFuel(masses: [1969])
        
        XCTAssertEqual(fuel, 654)
    }
    
    func testGivenTwoMassesItCalculatesTheFuelRequirement() {
        let fuel = calculateFuel(masses: [12, 14])
        
        XCTAssertEqual(fuel, 4)
    }

}
