//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {

        //Compare string lengths
        let initialString = s1 + s2
        if initialString.characters.count != shuffle.characters.count {
            return false
        }
        
        var generatedString1 = ""
        var generatedString2 = ""
        
        //Generate two strings from shuffle
        for c in shuffle.characters {
            if s1.containsString(String(c)) {
                generatedString1.append(c)
            } else {
                generatedString2.append(c)
            }
        }
        
        //Compare the generatedString with original s1 & s2
        if s1 != generatedString1 {
            return false
        }
        if s2 != generatedString2 {
            return false
        }
        
        return true
    }
}
