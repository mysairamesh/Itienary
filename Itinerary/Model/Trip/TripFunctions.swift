//
//  TripFunctions.swift
//  Itinerary
//
//  Created by Admin on 7/5/18.
//  Copyright © 2018 ItienaryApplication. All rights reserved.
//

import Foundation

class TripFunction
{
    
    static func createTrip (tripModel:TripModel)
    {
        
    }
    
    static func readTrips(completion:@escaping () -> ())
    {
        DispatchQueue.global(qos: .userInteractive).async {
            if (Data.tripModel.count == 0)
            {
                Data.tripModel.append(TripModel(Title:"Trip to Bali!"))
                Data.tripModel.append(TripModel(Title:"Mexico"))
                Data.tripModel.append(TripModel(Title:"Russia Trip"))
            }
        }
        DispatchQueue.main.async {
            completion()
        }
        
    }
    
    static func updateTrip(tripModel:TripModel)
    {
        
    }
    
    static func deleteTrip(tripModel:TripModel)
    {
        
    }
}

