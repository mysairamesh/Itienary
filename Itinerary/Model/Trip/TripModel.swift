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
    var Title:String!
    var Id:String!
    
    init (Title:String)
    {
        Id = UUID().uuidString
        self.Title = Title
    }
}
