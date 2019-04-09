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
    
    @IBOutlet weak var tableViewContents: UITableView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        self.addNavBarImage()
        tableViewContents.dataSource = self
        
        //Default Activity setup
        self.activity = Activity(
            id: 0, name: "Default Activity", description: "The default activity description", stage: Stage.celebration, track: Track.rebel, day: Day.friday, session: 1, startTime: "10AM", endTime: "12AM", image: "default related", location: "default map"
        )
        
    }
    
}

extension EventViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        var cell: UITableViewCell
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "main") as! MainTableViewCell
            
            cell.activityNameLabel.text = self.activity.name
            cell.activityImage.image = UIImage(named: self.activity.image ?? "default event cover")
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "location") as! LocationTableVIewCell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "description") as! DescriptionTableViewCell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "related") as! RelatedTableViewCell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "main") as! MainTableViewCell

        }
        
        return UITableViewCell()
    }
    
    
}
