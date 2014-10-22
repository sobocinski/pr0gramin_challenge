//
//  main.swift
//  04
//
//  Created by Paweł Sobociński on 21.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

var coder = Coder()
let oryginal = "Pawel Sobocinski"
let coded = coder.code(oryginal)
let decoded = coder.decode(coded)

println("Oryginal: \(oryginal)")
println("Coded: \(coded)")
println("Decoded: \(decoded)")

