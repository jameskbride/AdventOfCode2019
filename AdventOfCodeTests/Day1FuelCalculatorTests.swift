//
//  AdventOfCodeTests.swift
//  AdventOfCodeTests
//
//  Created by James Kirkbride on 12/1/19.
//  Copyright © 2019 James Kirkbride. All rights reserved.
//

@testable import AdventOfCode

import XCTest

class Day1FuelCalculatorTests: XCTestCase {

    func testGivenLowEndMassItCalculatesTheFuelRequirement() {
        let fuel = calculateFuel(masses: [9])
        
        XCTAssertEqual(fuel, 1)
    }
    
    func testGivenALargerMassItCalculatesTheFuelRequirement() {
        let fuel = calculateFuel(masses: [1969], accountForFuel: true)
        
        XCTAssertEqual(fuel, 966)
    }
    
    func testGivenALargerMassAccountingForFuelFuelCostsItCalculatesTheFuelRequirement() {
        XCTAssertEqual(calculateFuel(masses: [1969]), 654)
    }
    
    func testGivenTwoMassesItCalculatesTheFuelRequirement() {
        let fuel = calculateFuel(masses: [12, 14])
        
        XCTAssertEqual(fuel, 4)
    }
    
    func testGivenAllMassesItCalculatesTheFuelRequirement() {
        let masses: [Double] = [
        139616,
        148675,
        139706,
        89248,
        63979,
        140157,
        80815,
        74613,
        147394,
        117757,
        52711,
        137502,
        83219,
        71821,
        104791,
        104448,
        89677,
        74804,
        128554,
        125346,
        138662,
        136114,
        110521,
        143060,
        117221,
        61827,
        142517,
        119651,
        110249,
        79507,
        126873,
        144314,
        106224,
        68369,
        64974,
        75958,
        54365,
        62977,
        144205,
        141953,
        96671,
        138559,
        84377,
        110649,
        74845,
        103697,
        83778,
        129677,
        65904,
        113836,
        126255,
        114839,
        135004,
        120632,
        103543,
        139442,
        146017,
        107982,
        146149,
        104431,
        133978,
        57697,
        86463,
        122606,
        95701,
        84680,
        139779,
        71970,
        80514,
        83229,
        143172,
        123825,
        79849,
        109438,
        144655,
        130229,
        97853,
        67769,
        62040,
        125972,
        93546,
        77516,
        103971,
        114918,
        84445,
        123466,
        56622,
        135859,
        90966,
        77417,
        125790,
        144466,
        136980,
        147914,
        92955,
        75165,
        144271,
        135509,
        98379,
        118530,
        ]
        
        let fuel = calculateFuel(masses: masses)
        
        XCTAssertEqual(fuel, 3576689)
    }
    
    func testGivenAllMassesAccountForFuelFuelCostsItCalculatesTheFuelRequirement() {
        let masses: [Double] = [
        139616,
        148675,
        139706,
        89248,
        63979,
        140157,
        80815,
        74613,
        147394,
        117757,
        52711,
        137502,
        83219,
        71821,
        104791,
        104448,
        89677,
        74804,
        128554,
        125346,
        138662,
        136114,
        110521,
        143060,
        117221,
        61827,
        142517,
        119651,
        110249,
        79507,
        126873,
        144314,
        106224,
        68369,
        64974,
        75958,
        54365,
        62977,
        144205,
        141953,
        96671,
        138559,
        84377,
        110649,
        74845,
        103697,
        83778,
        129677,
        65904,
        113836,
        126255,
        114839,
        135004,
        120632,
        103543,
        139442,
        146017,
        107982,
        146149,
        104431,
        133978,
        57697,
        86463,
        122606,
        95701,
        84680,
        139779,
        71970,
        80514,
        83229,
        143172,
        123825,
        79849,
        109438,
        144655,
        130229,
        97853,
        67769,
        62040,
        125972,
        93546,
        77516,
        103971,
        114918,
        84445,
        123466,
        56622,
        135859,
        90966,
        77417,
        125790,
        144466,
        136980,
        147914,
        92955,
        75165,
        144271,
        135509,
        98379,
        118530,
        ]
        
        let fuel = calculateFuel(masses: masses, accountForFuel: true)
        
        XCTAssertEqual(fuel, 5362136)
    }
}
