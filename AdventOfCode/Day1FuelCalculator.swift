//
//  AdventOfCode.swift
//  AdventOfCode
//
//  Created by James Kirkbride on 12/1/19.
//  Copyright © 2019 James Kirkbride. All rights reserved.
//

func calculateFuel(masses: Array<Double>, accountForFuel: Bool = false) -> Int {
    let massFuels = masses.map { calculateFuel(mass: $0, accountForFuel: accountForFuel)}
    
    return Int((massFuels.reduce ( 0, +)))
}

func calculateFuel(mass: Double, accountForFuel: Bool = false) -> Double {
    let fuel = (mass / 3).rounded(.down) - 2
    
    if (fuel <= 0) {
        return 0
    }
    
    if (accountForFuel) {
        return fuel + calculateFuel(mass: fuel, accountForFuel: true)
    }
    
    return fuel
}
