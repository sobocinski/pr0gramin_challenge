//
//  Generator.swift
//  00
//
//  Created by Paweł Sobociński on 08.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import Foundation

class Generator {
    /// not real vowels
    let vowels = ["a","e","i","o","u", "y", "v", "x"]
    
    func get(length: Int = 6) -> String {
        
        var fname: String = ""
        //Int(arc4random_uniform(7))
        var letters = self.letters()
        //czy samogloska
        var vowel = false, containVowel = false
        var i_letter: Int
        let c = (letters.count-1)
        var letter: String, last: String = ""
        for var i = 0; i < length; {
            i_letter = Int(arc4random_uniform(26))  //0...25
            letter = letters[i_letter]
            containVowel = contains(self.vowels, letter)
            if(i>0) {
                let index: String.Index = advance(fname.startIndex, (countElements(fname)-1))
                last = fname.substringFromIndex(index);
            }
            
            
            //if contain vowel as befor was vowel
            if containVowel && vowel {
                continue
            }
            else if last == letter {
                continue
            }
            else if containVowel {
                vowel = true
            }
            else {
                vowel = false
            }
            fname += letter
            i++
        }
        
        
        return fname.capitalizedString
        
    }
    
    /// Return array of alphabet
    func letters() -> [String] {
        var chars = [String]()
        for char in 0x61...0x7A { //ascii 'a' is code point 0x61, 'z' is 0x7A
            chars.append(String(UnicodeScalar(char)))
        }
        return chars;
    }
    
    
}
