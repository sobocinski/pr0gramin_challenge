//
//  Game.swift
//  05
//
//  Created by Paweł Sobociński on 21.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

class Game {
    
    
    func random() -> Type {
        let maxGameLevel: UInt32 = 3
        let randomGameLevel: Int = Int(arc4random_uniform(maxGameLevel))
        return Type(randomGameLevel)
    }
    
    
    func proces() {
        let type_1 = self.random()
        let type_2 = self.random()

        if(type_1.hashValue == type_2.hashValue) {
            println("The same type, prcess again");
            return self.proces()
            
        }
        
        let sum: Int = type_1.hashValue + type_2.hashValue
        print("\(type_1) vs \(type_2)")
        switch sum {
            case 1:
                println(" - Paper WIN")
            case 2:
                println(" - Rock WIN")
            default:
                println(" - Scissors WIN")
        }    
    }
}