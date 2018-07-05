//
//  TripModel.swift
//  Itinerary
//
//  Created by Admin on 7/5/18.
//  Copyright © 2018 ItienaryApplication. All rights reserved.
//

import Foundation

class TripModel
{
    var Title:String
    let Id:UUID
    
    init (Title:String)
    {
        Id = UUID()
        self.Title = Title
    }
}
