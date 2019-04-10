//
//  LiveTableViewController.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 09/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import UIKit

class LiveViewController: UIViewController {

    @IBOutlet weak var activityTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addNavBarImage()
        activityTableView.separatorStyle = .none
        activityTableView.delegate = self
        activityTableView.dataSource = self
    }

}

extension LiveViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            return tableView.dequeueReusableCell(withIdentifier: "spotlightCell") as! SpotlightTableViewCell
        }
        return tableView.dequeueReusableCell(withIdentifier: "activityCell") as! ActivityTableViewCell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height:tableView.frame.height))
        headerView.backgroundColor = UIColor(red: 79/255, green: 188/255, blue: 182/255, alpha: 1)
        headerView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
        
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width, height: 33)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "FRI, APR 12, 2019"// my custom colour
        
        headerView.addSubview(label)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 33
    }
}
