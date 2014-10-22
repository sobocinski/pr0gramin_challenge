//
//  FizzBuzz.swift
//  04
//
//  Created by Paweł Sobociński on 21.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

class FizzBuzz : Printable {
    var number: Int
    
    init(_ number: Int) {
        self.number = number;
    }

    
    func print() -> String {
        var x = "";
        for(var i = 1; i < number; i++) {
            var line = "";
            if (i % 3 == 0) {
                line += "Fizz ";
            }
            
            if (i % 5 == 0) {
                line += "Buzz ";
            }
            
            if(line.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 0) {
                line += String(i)
            }
            
            x += line
            x += " "
        }
        
        return x;
    }
    
    var description: String {
        return self.print();
    }
}