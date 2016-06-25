//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        if inventory.count == 0 {
            return nil
        }
        var charCounts = [Character:Int]()
        for item in inventory {
            for character in item.name.characters {
                if charCounts[character] != nil {
                    charCounts[character] = charCounts[character]! + 1
                } else {
                    charCounts[character] = 1
                }
            }
        }
        var mostCommonChar: Character = "!"
        var highestFrequencyOfChar = 0
        for (nameChar, charCnt) in charCounts {
            if charCnt > highestFrequencyOfChar {
                highestFrequencyOfChar = charCnt
                mostCommonChar = nameChar
            }
        }
        return mostCommonChar
    }
}
