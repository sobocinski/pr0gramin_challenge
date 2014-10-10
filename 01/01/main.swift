//
//  main.swift
//  01
//
//  Created by Pawel Sobocinski on 08.10.2014.
//  Copyright (c) 2014 Pawel Sobocinski. All rights reserved.
//

import Foundation



func input() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    var input = NSString(data: inputData, encoding:NSUTF8StringEncoding)!
    input = input.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    return input;
}

func help() {
    println("------ MENU ------")
    println("1 - Play")
    println("9 - Help")
    println("0 - End")
    println("------      ------")

}

func play() {
    let card = Card(color: Card.randCardType())
    println("Computer card: \(card)")
    println("Your option: higher(h), lower (l) the same (s)");
    let userOption = input();
    switch userOption {
        case "h", "l", "s":
            let newCard = Card(color: Card.randCardType())
            let status = card.compare(userOption, comparedCard: newCard)
            printStatus(status)
        default:
            println("Unknown status")
            help()
    }
    
    
}

func printStatus(status: Bool) {
    if(status) {
        println("YOU WIN :D")
    }
    else {
        println("YOU LOSE :(")
    }
}

var work = true
help()
while(work) {
    var userInput:String = input()
    switch userInput {
        case "1":
            play()
        case "9":
            help()
        default:
            work = false
    }
}


let card = Card(color: Card.randCardType())




println(card)

