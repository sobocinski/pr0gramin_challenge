//
//  Passwd.swift
//  10
//
//  Created by Pawel Sobocinski on 31.10.2014.
//  Copyright (c) 2014 Pawel Sobocinski. All rights reserved.
//

import Foundation



class Passwd {
    enum Types {
        case Letters
        case Digits
        case Symbols
        
        
        
        func getRanges() -> [Range<UInt8>] {
            switch self {
            case .Letters:
                return[Range(start: 65, end: 90), Range(start: 97, end: 122)]
                
            case .Digits:
                return [Range(start: 48, end: 57)]
                
            case .Symbols:
                return [Range(start: 33, end: 47), Range(start: 58, end: 64), Range(start: 123, end: 126)]
            }
        }
    }
    
    var length: Int = 8
    var types: [Types] = [Types.Letters, Types.Symbols]
    
    init() {
        
    }
    
    init(length: Int) {
        self.length = length
    }
    
    init(length: Int, types: [Types]) {
        self.length = length
        self.types = types
    }
    
    func generate() -> String {
        var flatRanges: [UInt8]  = []
        for type in self.types {
            for range in type.getRanges() {
                flatRanges += range
            }
        }
        
        
        var password = ""
        for(var i = 0 ; i < self.length; i++) {
            let randomIndex = Int(arc4random_uniform(UInt32(flatRanges.count)))
            let n = flatRanges[randomIndex]
                password += String(UnicodeScalar(n))
        }
        
        return password
    }
    
   
    
    
}