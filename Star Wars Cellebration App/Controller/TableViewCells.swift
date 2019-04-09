//
//  TableViewCells.swift
//  Star Wars Cellebration App
//
//  Created by Rodrigo Giglio on 08/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation
import UIKit

class MainTableViewCell: UITableViewCell{
    
    var activity: Activity = Activity()
    
    @IBOutlet weak var activityImage: UIImageView!
    @IBOutlet weak var activityNameLabel: UILabel!
    @IBOutlet weak var activityTrackLabel: UILabel!
    @IBOutlet weak var activityStageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        activityImage.image = UIImage(named: activity.image ?? "default event cover")
        activityNameLabel.text = activity.name
        activityTrackLabel.text = activity.track?.get()
        activityStageLabel.text = activity.stage?.get()
    }
    
}

class LocationTableVIewCell: UITableViewCell{
    
    var activity: Activity = Activity()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}

class DescriptionTableViewCell: UITableViewCell{
    
    var activity: Activity = Activity()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}

class RelatedTableViewCell: UITableViewCell{
    
    var activity: Activity = Activity()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
