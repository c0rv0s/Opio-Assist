//
//  addAlert.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/19/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import SafariServices
import CoreLocation
import MapKit

protocol addAlertDelegate {
    func addGeotificationViewController(controller: addAlert, didAddCoordinate coordinate: CLLocationCoordinate2D,
                                        radius: Double, identifier: String, note: String, eventType: EventType)
}

class addAlert: UIViewController, UITextFieldDelegate, addAlertDelegate, MKMapViewDelegate, CLLocationManagerDelegate  {
    
    //@IBOutlet weak var datePicker: UIDatePicker!
    //@IBOutlet weak var titleField: UITextField!
    
    
    @IBOutlet weak var addpin: UIImageView!
    
    @IBOutlet weak var mapview: MKMapView!
    
    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var radiusText: UITextField!
    
    var delegate: addAlertDelegate!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var geotifications = [Geotification]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.delegate = self
        radiusText.delegate = self
        
        radiusText.keyboardType = UIKeyboardType.NumbersAndPunctuation
        
       // mapView.showsUserLocation = true
        

        

    }
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        mapView.showsUserLocation = (status == .AuthorizedAlways)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return false to ignore.
    {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func cancel(sender: AnyObject) {
    }
    
    @IBAction func addLocation(sender: AnyObject) {
        var coordinate = mapView.centerCoordinate
        var radius = (radiusText.text! as NSString).doubleValue
        var identifier = NSUUID().UUIDString
        var note = titleText.text
        var eventType = EventType.OnEntry
        print("der")
        delegate!.addGeotificationViewController(self, didAddCoordinate: coordinate, radius: radius, identifier: identifier, note: note!, eventType: eventType)
        print("addlocationdone")
    }

}
