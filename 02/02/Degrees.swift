//
//  Degrees.swift
//  02
//
//  Created by Paweł Sobociński on 20.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation


struct Degrees : Printable {
   
    var type: Types
    //alway in
    var temp: Double

    var temperature: Double {
        get {
            switch self.type {
                case .Kelvin:
                    return self.celctToKelvin(self.temp)
                case .Fahrenheit:
                    return self.celctToFahrenheit(self.temp)
                case .Celsius:
                    return self.temp
            }
            
        }
        set {
            switch self.type {
                case .Kelvin:
                    self.temp = self.celctToKelvin(newValue)
                case .Fahrenheit:
                    self.temp = self.celctToFahrenheit(newValue)
                case .Celsius:
                    self.temp = newValue
            }
        }
    }
    
    var description: String {
        return "Deeegree: \(self.temperature) \(self.type)"
    }
    
    init(_ temperature: Double, type: Types = Types.Celsius) {
        self.type = type
        self.temp = temperature
    }
    
    
    
    
    func convert(type: Types) -> Double {
        switch type {
            case .Kelvin:
                return self.celctToKelvin(self.temp)
            case .Fahrenheit:
                return self.celctToFahrenheit(self.temp)
            case .Celsius:
                return self.temp
        }
    }
    
    
   func celctToFahrenheit(degree: Double) -> Double {
        return degree*1.8 + 32.0
    }
    
    func celctToKelvin(degree: Double) -> Double {
        return degree+273.15
    }

    func fahrenheitToCelc(degree: Double) -> Double {
        return (degree * -32.0)/1.8
    }

    func kelvinToCelc(degree: Double) -> Double {
        return 273.15 - degree
    }


    
}