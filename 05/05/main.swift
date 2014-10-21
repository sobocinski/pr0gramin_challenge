//
//  main.swift
//  05
//
//  Created by Paweł Sobociński on 21.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

var game = Game()

var x = true
var z = 6;
while(x) {
    game.proces()
    if(z > 0) {
        z--
    }
    else {
        x = false
    }
}
