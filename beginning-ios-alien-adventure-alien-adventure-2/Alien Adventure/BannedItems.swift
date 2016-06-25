//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var itemIDs = [Int]()
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let items = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        
        for item in items {
            if let itemID = item["ItemID"] as? Int {
                if let name = item["Name"] as? String {
                    // check if name contains laser
                    if name.lowercaseString.containsString("laser") {
                        // check the carbonAge
                        if let histData = item["HistoricalData"] as? [String:AnyObject] {
                            if let carbonAge = histData["CarbonAge"] as? Int {
                                if carbonAge < 30 {
                                    itemIDs.append(itemID)
                                }
                            }
                        }
                    }
                }
            }
        }
        
        return itemIDs
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"