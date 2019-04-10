//
//  EventViewController.swift
//  Star Wars Cellebration App
//
//  Created by Rodrigo Giglio on 05/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation
import UIKit


class  EventViewController: UIViewController {
    
    var activity: Activity = Activity()
    
    @IBOutlet weak var activityTitleLabel: UILabel!
    @IBOutlet weak var activityTimeLabel: UILabel!
    @IBOutlet weak var tableViewContents: UITableView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        self.addNavBarImage()
        tableViewContents.dataSource = self
        
        // set title and time on header
        activityTitleLabel.text = activity.title
        activityTimeLabel.text =
            (self.activity.startTime ?? "00 PM")
            + " - " +
            (self.activity.endTime ?? "00 PM")
        
    }
    
}

extension EventViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        var cell: UITableViewCell
        
        switch indexPath.row {
            
        case 0: // MainTableViewCell
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "main") as! MainTableViewCell
            
            cell.activityImage.image = UIImage(named: self.activity.image ?? "error image")
            cell.activityNameLabel.text = self.activity.name
            cell.activityTrackLabel.text = self.activity.track?.get()
            cell.activityStageLabel.text = self.activity.stage?.get()
            
            return cell
            
        case 1: //LocationTableVIewCell
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "location") as! LocationTableVIewCell
            //cell.locationImageView.image = UIImage(named: self.activity.location ?? "error image") // to be used later
            cell.locationImageView.image = UIImage(named: "default map")

            return cell
            
        case 2: //DescriptionTableViewCell
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "description") as! DescriptionTableViewCell
            cell.descriptionLabel.text = self.activity.description ?? "This event has no description."
            
            return cell
            
        case 3: //RelatedTableViewCell
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "related") as! RelatedTableViewCell
            
            // 1
            cell.related1ImageView.image = UIImage(named: activity.related?[0].image ?? "error image")
            cell.related1NameLabel.text = activity.related?[0].title
            cell.related1TimeLabel.text =
                (activity.related?[0].startTime ?? "00PM")
                + " - " +
                (activity.related?[0].endTime ?? "00PM")
            
            // 2
            cell.related2ImageView.image = UIImage(named: activity.related?[1].image ?? "error image")
            cell.related2NameLabel.text = activity.related?[1].title
            cell.related2TimeLabel.text =
                (activity.related?[1].startTime ?? "00PM")
                + " - " +
                (activity.related?[1].endTime ?? "00PM")
            
            // 3
            cell.related3ImageView.image = UIImage(named: activity.related?[2].image ?? "error image")
            cell.related3NameLabel.text = activity.related?[2].title
            cell.related3TimeLabel.text =
                (activity.related?[2].startTime ?? "00PM")
                + " - " +
                (activity.related?[2].endTime ?? "00PM")
            
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "main") as! MainTableViewCell
            return cell
        }
        
//        return UITableViewCell()
    }
    
    
}
