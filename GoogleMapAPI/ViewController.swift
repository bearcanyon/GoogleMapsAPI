//
//  ViewController.swift
//  GoogleMapAPI
//
//  Created by KumagaiNaoki on 2016/01/25.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.10, zoom: 6)
        let mapView = GMSMapView.mapWithFrame(frame, camera: camera)
        mapView.myLocationEnabled = true
        self.view.addSubview(mapView)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
}

