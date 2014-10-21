//
//  Types.swift
//  05
//
//  Created by Paweł Sobociński on 21.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

enum Type : Printable {
    case Rock
    case Paper
    case Scissors
    
    init(_ number: Int) {
        let num = number > 2 ? number%3 : number
        switch number {
            case 0:
                self = .Rock
            case 1:
                self = .Paper
            default:
                self = .Scissors
        }
    }
    
    var description: String {
        switch(self) {
        case .Rock:
            return "Rock"
        case .Paper:
            return "Paper"
        case .Scissors:
            return "Scissors"
        }
    }
}