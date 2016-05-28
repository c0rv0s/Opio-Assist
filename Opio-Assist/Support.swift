//
//  Support.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/17/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import SafariServices
import CoreLocation

class Support: UITableViewController {
    
    var dataSource: Array<SupportObjects>!
    
    
    var locationManager: OneShotLocationManager!
    var locCurrent: CLLocation!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = []
        
        locationManager = OneShotLocationManager()
        locationManager!.fetchWithCompletion {location, error in
            // fetch location or an error
            if let loc = location {
                self.locCurrent = loc
            } else if let err = error {
                
                let alertController = UIAlertController (title: "Location Services disabled.", message: "Enabling location services allows Knot to show you listings in your area.", preferredStyle: .Alert)
                
                let settingsAction = UIAlertAction(title: "Settings", style: .Default) { (_) -> Void in
                    let settingsUrl = NSURL(string: UIApplicationOpenSettingsURLString)
                    if let url = settingsUrl {
                        UIApplication.sharedApplication().openURL(url)
                    }
                }
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
                alertController.addAction(settingsAction)
                alertController.addAction(cancelAction)
                
                self.presentViewController(alertController, animated: true, completion: nil);
                //print(err.localizedDescription)
            }
            self.locationManager = nil
        }

        
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        
        let cell:SupportCell = self.tableView.dequeueReusableCellWithIdentifier("SupportCell") as! SupportCell
        cell.data = dataSource[indexPath.row] as! SupportObjects
        cell.titleLabel.text = cell.data.title
        cell.distanceLabel.text = cell.data.distance
        cell.imageView?.image = cell.data.pic
        
        return cell
        
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 290
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let svc = SFSafariViewController(URL: NSURL(string: dataSource[indexPath.row].url as! String)!)
        self.presentViewController(svc, animated: true, completion: nil)
        
    }
}