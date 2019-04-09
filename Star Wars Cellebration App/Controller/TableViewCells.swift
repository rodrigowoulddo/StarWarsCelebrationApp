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
    
    @IBOutlet weak var activityImage: UIImageView!
    @IBOutlet weak var activityNameLabel: UILabel!
    @IBOutlet weak var activityTrackLabel: UILabel!
    @IBOutlet weak var activityStageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}

class LocationTableVIewCell: UITableViewCell{
    
    @IBOutlet weak var locationImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}

class DescriptionTableViewCell: UITableViewCell{

    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}

class RelatedTableViewCell: UITableViewCell{
    
    @IBOutlet weak var related1ImageView: UIImageView!
    @IBOutlet weak var related1NameLabel: UILabel!
    @IBOutlet weak var related1TimeLabel: UILabel!
    
    @IBOutlet weak var related2ImageView: UIImageView!
    @IBOutlet weak var related2NameLabel: UILabel!
    @IBOutlet weak var related2TimeLabel: UILabel!
    
    @IBOutlet weak var related3ImageView: UIImageView!
    @IBOutlet weak var related3NameLabel: UILabel!
    @IBOutlet weak var related3TimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
