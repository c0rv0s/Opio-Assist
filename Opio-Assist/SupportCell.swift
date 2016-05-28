//
//  SupportCell.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/17/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class SupportCell: UITableViewCell {
    
    @IBOutlet weak var picView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var pic: UIImage!
    var title: String!
    var distance: String!
    var data: SupportObjects!
    
}