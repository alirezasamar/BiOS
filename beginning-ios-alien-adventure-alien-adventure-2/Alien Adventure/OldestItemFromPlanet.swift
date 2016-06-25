//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestItem: UDItem? = nil
        var oldestItemCarbonAge = 0
        for item in inventory {
            if var histData = item.historicalData as? [String:AnyObject] {
                if let planetName = histData["PlanetOfOrigin"] as? String {
                    if let carbonAge = histData["CarbonAge"] as? Int {
                        if planetName == planet && carbonAge > oldestItemCarbonAge {
                            oldestItem = item
                            oldestItemCarbonAge = carbonAge
                        }
                    }
                    
                }
            }
        }
        return oldestItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"