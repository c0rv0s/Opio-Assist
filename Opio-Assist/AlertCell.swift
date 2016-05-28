//
//  AlertCell.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/19/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class AlertCell: UITableViewCell {
    
    @IBOutlet weak var descripText: UILabel!
    
    @IBOutlet weak var locationText: UILabel!
    
    @IBOutlet weak var timeText: UILabel!
    
    var data: AlertObjects!
    
}