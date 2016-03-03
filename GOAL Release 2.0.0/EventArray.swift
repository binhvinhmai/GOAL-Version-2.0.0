//
//  EventArray.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/2/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

class EventArray
{
    private var eventArray = [KCEvent]()
    
    func append(event: KCEvent) -> Void
    {
        eventArray.append(event)
    }
    
    func verifyCode(c: Int, owner: goalUser) -> Bool
    {
        for item in eventArray
        {
            if item.verifyCode(c) == true && item.checkVisits() == true
            {
                owner.addPoints(c)
                return true
            }
        }
        //Reached end of array, no matching code
        return false
    }
}

var ListOfEvents = EventArray()
var CatDay = KCEvent(n: "Cat Appreciation Day", p: 100, c: 00001, m: 2, date: "03/01/2016")
var DragonDay = KCEvent(n: "Dragon Appreciation Day", p: 1000, c: 00002, m:1, date: "11/30/2016")
var MonkeyDay = KCEvent(n: "Monkey Appreciation Day", p: 50, c: 00003, m: 3, date: "8/12/2015")
var Sacrifice = KCEvent(n: "Sacrifice the innocent", p: 20000, c: 00004, m: 5, date: "02/29/2016")

func loadArray() -> Void
{
    ListOfEvents.append(CatDay)
    ListOfEvents.append(DragonDay)
    ListOfEvents.append(MonkeyDay)
    ListOfEvents.append(Sacrifice)
}


