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
    
    @IBOutlet weak var tableViewContents: UITableView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        self.addNavBarImage()
        tableViewContents.dataSource = self
        
    }
    
}

extension EventViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "main") as! MainTableViewCell
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "location") as! LocationTableVIewCell
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "description") as! DescriptionTableViewCell
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: "related") as! RelatedTableViewCell
        default:
            cell = tableView.dequeueReusableCell(withIdentifier: "main") as! MainTableViewCell

        }
        
        return cell
    }
    
    
}
