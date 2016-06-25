//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        var longestNameInInventory = ""
        
        //A for loop goes into UDItem and counts the characters of each item to find the longest one
        for items in inventory {
            if items.name.characters.count > longestNameInInventory.characters.count {
                longestNameInInventory = items.name
            }
        }
        
        //Returning the reverse longest item
        return String(longestNameInInventory.characters.reverse())
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"