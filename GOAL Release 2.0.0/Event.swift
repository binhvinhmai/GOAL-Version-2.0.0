//
//  Event.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/2/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

import EventKit
import UIKit

class KCEvent
{
    // Variables initialized in the constructor
    private var eventName: String
    private var eventPoints: Int
    private var eventCode: Int
    private var eventDate: NSDate
    private var maxVisits: Int //Each event may have a set limit
    
    // Variables set to default
    var eventDescription: String = ""
    private var visits: Int = 0
    private var eventLocation: String = ""
    
    init(n: String, p: Int, c: Int, m: Int, date: String)
    {
        // n p c m date
        // Variables required for the constructor,
        self.eventName = n
        self.eventPoints = p
        self.eventCode = c
        self.maxVisits = m
        
        // Convert the string to a date
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MM/DD/YYYY"
        self.eventDate = formatter.dateFromString(date)!
    }
    
    // Getters and setters
    
    func printDescription() -> String
    {
        return self.eventDescription
    }
    
    func setDescription(desc: String) -> Void
    {
        self.eventDescription = desc
    }
    
    func getName() -> String
    {
        return self.eventName
    }
    
    func getDate() -> NSDate
    {
        return self.eventDate
    }
    
    func getCode() -> Int
    {
        return self.eventCode
    }
    
    func getPoints() -> Int
    {
        return self.eventPoints
    }
    
    func getLocation() ->String
    {
        return self.eventLocation
    }
    
    func setLocation(place: String) ->Void
    {
        self.eventLocation = place
    }
    
    // Action functions
    
    func verifyCode(c: Int) -> Bool
    {
        if c == self.eventCode
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func checkVisits() -> Bool
    {
        //If they've reached the number of allowable visits.
        if self.visits <= self.maxVisits
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func addVisits() -> Void
    {
        self.visits+=1
    }
    
}

