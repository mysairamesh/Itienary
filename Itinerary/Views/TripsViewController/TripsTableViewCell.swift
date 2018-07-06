//
//  TtipTableViewCell.swift
//  Itinerary
//
//  Created by Admin on 7/5/18.
//  Copyright © 2018 ItienaryApplication. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardView.addShadowAndRoundedCorners()
    }
    
    func setup (tripModel:TripModel)
    {
        self.titleLabel.text = tripModel.Title
    }
}
