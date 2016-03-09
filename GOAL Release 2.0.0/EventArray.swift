//
//  EventArray.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/2/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

import UIKit

class EventArray
{
    private var eventArray = [KCEvent]()
    
    func append(event: KCEvent) -> Void
    {
        self.eventArray.append(event)
    }
    
    func verifyCode(c: Int, user: goalUser) -> Bool
    {
        var count = 0
        for _ in self.eventArray
        {
            if self.eventArray[count].getCode() == c && self.eventArray[count].checkVisits() == true
            {
                user.addPoints(self.eventArray[count].getPoints())
                self.eventArray[count].addVisits()
                return true
            }
            count++
        }
        // Reached end of array, no matching code
        return false
    }
    
    func findCode(code: Int) -> Int
    {
        var count = 0
        for _ in self.eventArray
        {
            if self.eventArray[count].getCode() == code
            {
                return self.eventArray[count].getPoints()
            }
            count++
        }
        // If not found
        return 0
    }
}

var ListOfEvents = EventArray()
var CatDay = KCEvent(n: "Cat Appreciation Day", p: 100, c: 00001, m: 2, date: "03/01/2016")
var DragonDay = KCEvent(n: "Dragon Appreciation Day", p: 1000, c: 00002, m:1, date: "11/30/2016")
var MonkeyDay = KCEvent(n: "Monkey Appreciation Day", p: 50, c: 00003, m: 3, date: "8/12/2016")
var Sacrifice = KCEvent(n: "Sacrifice the innocent", p: 20000, c: 00004, m: 5, date: "02/29/2016")

func loadArray() -> Void
{
    ListOfEvents.append(CatDay)
    ListOfEvents.append(DragonDay)
    ListOfEvents.append(MonkeyDay)
    ListOfEvents.append(Sacrifice)
}


