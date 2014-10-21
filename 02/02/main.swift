//
//  main.swift
//  02
//
//  Created by Paweł Sobociński on 20.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation






var deg = Degrees(0.0)
println("Degrees C \(deg)")
deg.type = Types.Kelvin
println("Degrees K \(deg)")
deg.type = Types.Fahrenheit
println("Degrees F \(deg)")