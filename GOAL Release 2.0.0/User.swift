//
//  User.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/2/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

class goalUser
{
    // Variables
    private var totalPoints: Int = 0
    private var monthlyPoints: Int = 0
    func addPoints(newPoints: Int)
    {
        self.monthlyPoints+=newPoints
        self.totalPoints+=newPoints
    }
    
    func resetMonth() -> Void
    {
        self.monthlyPoints = 0;
    }
}

