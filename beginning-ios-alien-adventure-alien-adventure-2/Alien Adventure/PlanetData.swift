//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        var planetWithHighestPoints = ""
        var highestPoints = 0
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let planetsRaw = NSData(contentsOfURL: dataFileURL)!
        var planets: [[String:AnyObject]]!
        do {
            planets = try! NSJSONSerialization.JSONObjectWithData(planetsRaw, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        for planet in planets {
            if let planetName = planet["Name"] as? String {
                if let commonCnt = planet["CommonItemsDetected"] as? Int {
                    if let uncommonCnt = planet["UncommonItemsDetected"] as? Int {
                        if let rareCnt = planet["RareItemsDetected"] as? Int {
                            if let legendaryCnt = planet["LegendaryItemsDetected"] as? Int {
                                let currPlanetPoints = commonCnt + uncommonCnt * 2 + rareCnt * 3 + legendaryCnt * 4
                                if currPlanetPoints > highestPoints {
                                    highestPoints = currPlanetPoints
                                    planetWithHighestPoints = planetName
                                }
                            }
                        }
                    }
                }
            }
        }
        
        
        return planetWithHighestPoints
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"