//
//  Coder.swift
//  04
//
//  Created by Paweł Sobociński on 21.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

class Coder {
    
    let diff = 70
    let max = 126
    let start = 32 //chars from 32 - 126
    
    func code(string: String) -> String {
        var code = "";
        for i in string.utf8  {
            let ii = Int(i)
            let z = (ii+diff) > max ? (ii+diff - max + start) : ii+diff
            let letter = String(UnicodeScalar(z))
            code += letter
        }
        return code
    }
    
    func decode(string: String) -> String {
        var decode = ""
        for i in string.utf8  {
            let ii = Int(i)
            let z = ii-diff < start ? (max - abs(ii - diff - start)) : ii-diff
            let letter = String(UnicodeScalar(z))
            decode += letter
        }
        return decode
    }
}