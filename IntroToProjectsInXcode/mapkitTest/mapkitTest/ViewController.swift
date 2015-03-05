//
//  ViewController.swift
//  mapkitTest
//
//  Created by Sean on 2/5/15.
//  Copyright (c) 2015 Sean. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let location = CLLocationCoordinate2D(
            latitude: 40.0,
            longitude: -74.0
        )
        // 2
        let span = MKCoordinateSpanMake(0.75, 0.75)
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

