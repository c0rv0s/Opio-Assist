//
//  Inform.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/15/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class Inform: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var colView: UICollectionView!
    var collectionItems = ["Side Effects", "Medication", "Parenting", "Pets", "Household", "Relapse", "Time", "Doctors"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 150, left: 0, bottom: 50, right: 0)
        
        layout.itemSize = CGSize(width: 175, height: 175)
        
        colView!.contentInset = UIEdgeInsets(top: 23, left: 40, bottom: 40, right: 40)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.collectionItems.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("InfoDetailSeg", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if (segue!.identifier == "InfoDetailSeg") {
            
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("TitleCell", forIndexPath: indexPath) as! TitleCell
        cell.cellLabel = self.collectionItems[indexPath.row]
        cell.title.text = cell.cellLabel
        
        return cell
    }
}
