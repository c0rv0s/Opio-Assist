//
//  navsub.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/15/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import UIKit

class navsub: UINavigationController {
    
    let del = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationBar.translucent = false
        self.navigationBar.tintColor = UIColor.blackColor()
    }

}