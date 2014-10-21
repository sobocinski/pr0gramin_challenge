//
//  main.swift
//  02
//
//  Created by Paweł Sobociński on 10.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

func input() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    var input = NSString(data: inputData, encoding:NSUTF8StringEncoding)!
    input = input.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    return input;
}
println("Write your date");
let userInput = input();

let formater = NSDateFormatter()
formater.timeZone = NSTimeZone(name: "Europe/Warsaw")

if let date: AnyObject = NSDate.dateWithNaturalLanguageString(userInput, locale: formater.locale) {
    println("\(date)");
    let secounds = abs(date.timeIntervalSinceNow)
    let minutes = secounds/60.0
    let hours = minutes/60.0
    println("Time diff \(secounds) sec. ~= \(minutes) min. ~= \(hours) h.")
}
else {
    println("Unknown date format")
}



