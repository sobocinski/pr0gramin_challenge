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
let userInput = "2014-10-10 18:00"// input();

let formater = NSDateFormatter()
formater.timeZone = NSTimeZone(name: "Europe/Warsaw")


//formater.dateFormat = "HH:mm:ss"

var nowa = formater.defaultDate
println(nowa)
if let date: AnyObject = NSDate.dateWithNaturalLanguageString(userInput, locale: formater.locale) {
    println("\(date)");
    var interval = date.timeIntervalSinceNow
    println(interval)
}
else {
    println("Unknown date format")
}



