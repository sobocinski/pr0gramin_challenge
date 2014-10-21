//
//  Types.swift
//  02
//
//  Created by Paweł Sobociński on 20.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

enum Types : Printable {
    case Celsius
    case Fahrenheit
    case Kelvin
    
    var description: String {
        switch(self) {
        case .Celsius:
            return "°C"
        case .Fahrenheit:
            return "°F"
        case .Kelvin:
            return "°K"
        }
    }
    
}
