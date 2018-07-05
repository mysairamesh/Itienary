//
//  TripsViewController.swift
//  Itinerary
//
//  Created by Admin on 7/5/18.
//  Copyright © 2018 ItienaryApplication. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var TripCell = tableView.dequeueReusableCell(withIdentifier: "TripCell")
        if (TripCell == nil)
        {
            TripCell = UITableViewCell(style: .default, reuseIdentifier: "TripCell")
        }
        TripCell?.textLabel?.text = Data.tripModel[indexPath.row].Title
        
        return TripCell!
    }
    
    @IBOutlet weak var TripsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TripsTableView.dataSource = self
        // Do any additional setup after loading the view.
        TripFunction.readTrips {
            self.TripsTableView.reloadData()
        }
    }

}
