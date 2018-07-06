//
//  UIViewExtensions.swift
//  Itinerary
//
//  Created by Admin on 7/5/18.
//  Copyright © 2018 ItienaryApplication. All rights reserved.
//

import UIKit

extension UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    func addShadowAndRoundedCorners()
    {
        layer.shadowOpacity = 1.0
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.black.cgColor
        layer.cornerRadius = 10.0
        
    }

}
