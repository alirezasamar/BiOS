//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        
        var outputItems = [UDItem]()
        
        //A for loop to find all the items contain "MoonRock" and add them to the outputItem array
        for item in inventory {
            if item.name.containsString("MoonRock") {
                outputItems.append(item)
            }
        }
        
        //Returning array of items
        return outputItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"