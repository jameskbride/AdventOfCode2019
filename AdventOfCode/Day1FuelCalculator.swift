//
//  AdventOfCode.swift
//  AdventOfCode
//
//  Created by James Kirkbride on 12/1/19.
//  Copyright © 2019 James Kirkbride. All rights reserved.
//

func calculateFuel(masses: Array<Int>) -> Int {
    let massFuels = masses.map { calculateFuel(mass: $0)}
    
    return massFuels.reduce ( 0, +)
}

func calculateFuel(mass: Int) -> Int {
    let fuel = (mass / 3) - 2
    
    return fuel
}
