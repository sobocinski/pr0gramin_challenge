//
//  Calc.swift
//  08
//
//  Created by Paweł Sobociński on 23.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

class Calc {
    var name1: String
    var name2: String

    var counts: String = ""
    var word = ""
    
    
    init(_ name1: String, _ name2: String) {
        self.name1 = name1.lowercaseString.replace(" ", withString: "")!
        self.name2 = name2.lowercaseString.replace(" ", withString: "")!
    }
    
    
    func z(e: String) -> String {
        var c = ""
        var n = e.length - 1
        var t = 0
        for (; n >= t; n--, t++) {
            if n != t {
                let a = e[t]?.toInt()
                let b = e[n]?.toInt()
                if (a != nil) {
                    if (b != nil) {
                        let d = a!+b!
                        c += String(d)
                    }
                }
            }
            else {
                c += e[t]!
            }
        }
        
        return c
}
    
    func calculate() -> String {
        self.word = self.name1 + "loves" + self.name2
        for ch in self.word {
            self.count(String(ch))
         }
        
        var b = self.counts

        for (; b.length > 2; b = z(b)) {}
        
        return b;
    }
    
    func count(pattern: String) {
        if let matches = word.matches (pattern, ignoreCase: true) {
            let length = matches.count
     
            if(length != 0) {
                self.counts += String(length)
            }
            self.word = self.word.replace(pattern, withString: "")!
           }
            
    }
}
