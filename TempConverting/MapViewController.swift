//
//  MapViewController.swift
//  TempConverting
//
//  Created by Samantha Cortopassi on 2/1/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        //creating map
        mapView = MKMapView()
    
        //setting it as THE view
        view = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
    
}
