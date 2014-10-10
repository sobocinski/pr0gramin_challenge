//
//  Card.swift
//  01
//
//  Created by Paweł Sobociński on 09.10.2014.
//  Copyright (c) 2014 Pawel Sobocinski. All rights reserved.
//

import Foundation

enum CardColor {
    case BlackSpade
    case RedHeart
    case RedDiamond
    case BlackClub
    
    static let allValues = [BlackSpade, RedHeart, RedDiamond, BlackClub]
}

class Card : Printable{
    var type: String;
    var color: CardColor
    
    let cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
    
    var description: String{
        return "\(self.type)\(self.color())"
    }
    
    init(type: String = "", color: CardColor) {
        if(type == "") {
            let randomIndex = Int(arc4random_uniform(UInt32(self.cards.count)))
            self.type = self.cards[randomIndex]
        }
        else {
            self.type = type
        }
      
       self.color = color
    }
    
    class func randCardType() -> CardColor {
        let randomIndex = Int(arc4random_uniform(UInt32(CardColor.allValues.count)))
        return CardColor.allValues[randomIndex]
    }
    
    func color(color: CardColor? = nil) -> String {
        var user_color: CardColor;
        if let cc = color  {
            user_color = cc
        }
        else {
            user_color = self.color
        }
     
        switch user_color {
            case .BlackSpade:
                    return "\u{2660}"
            case .RedHeart:
                    return "\u{2665}"
            case .RedDiamond:
                    return "\u{2666}"
            case .BlackClub:
                    return "\u{2663}"
        }
    }
    
    func compare(option: String, comparedCard: Card) -> Bool {
        let comparedCardIndex = find(self.cards, comparedCard.type);
        let cardIndex = find(self.cards, self.type)
        
        println("\(comparedCard) vs \(self)")
        
        if( (comparedCardIndex > cardIndex && option == "h") ||
            (comparedCardIndex < cardIndex && option == "l") ||
            (comparedCardIndex == cardIndex && option == "s")) {
                return true
        }
        return false;
        
    }
    
    
}