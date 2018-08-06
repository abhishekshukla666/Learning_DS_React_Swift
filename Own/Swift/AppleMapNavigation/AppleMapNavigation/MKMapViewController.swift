//
//  MKMapViewController.swift
//  AppleMapNavigation
//
//  Created by Abhishek on 01/08/18.
//  Copyright © 2018 AbhishekShukla. All rights reserved.
//

import UIKit
import MapKit

final class CurrentLocationAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
    var region: MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        return MKCoordinateRegion(center: coordinate, span: span)
    }
}

class MKMapViewController: UIViewController {
    
    @IBOutlet weak var mkMapView: MKMapView!
    
    let pageTitle = "Apple Maps"
    let lat = 28.591502
    let lng = 77.319041
    
    var currentPossitionButton: UIButton {
        let buttonRect =  CGRect(x: UIScreen.main.bounds.width-70, y: UIScreen.main.bounds.height-100, width: 45, height: 45)
        let button = UIButton(frame: buttonRect)
        button.setImage(#imageLiteral(resourceName: "current_location"), for: .normal)
        button.addTarget(self, action: #selector(handleCurrentPossition), for: .touchUpInside)
        return button
    }
    
    @objc func handleCurrentPossition() {
        mkMapView.setRegion(mkMapView.region, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareNavigationView()
        registerServices()
    }
    
    func prepareNavigationView() {
        self.title = pageTitle
    }
    
    func registerServices() {
        mkMapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let currentLocationAnnotation = CurrentLocationAnnotation(coordinate: coordinate, title: "PaytmMall", subtitle: "F1, Sector 6, Noida")
        mkMapView.addAnnotation(currentLocationAnnotation)
        
//        let camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: 1, pitch: 1, heading: 0)
//        mkMapView.setCamera(camera, animated: true)
        
        
        mkMapView.setRegion(currentLocationAnnotation.region, animated: true)
        
        mkMapView.addSubview(currentPossitionButton)
    }
}

extension MKMapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let currentLocationAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView else { return nil }
        
        currentLocationAnnotationView.animatesWhenAdded = true
        currentLocationAnnotationView.titleVisibility = .adaptive
        currentLocationAnnotationView.subtitleVisibility = .adaptive
        
        return currentLocationAnnotationView
    }
}
