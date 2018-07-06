//
//  TripsViewController.swift
//  Itinerary
//
//  Created by Admin on 7/5/18.
//  Copyright © 2018 ItienaryApplication. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {

    
    @IBOutlet weak var TripsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TripsTableView.delegate = self
        TripsTableView.dataSource = self
        // Do any additional setup after loading the view.
        TripFunction.readTrips { [weak self] in
            self?.TripsTableView.reloadData()
        }
        view.backgroundColor = Theme.background
    }
}

extension TripsViewController:  UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let TripCell = tableView.dequeueReusableCell(withIdentifier: "TripCell") as! TripsTableViewCell
        
        TripCell.setup(tripModel: Data.tripModel[indexPath.row])
        
        return TripCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
