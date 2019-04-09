//
//  LiveTableView.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 09/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import UIKit

class LiveTableView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        vw.backgroundColor = UIColor.red
        
        return vw
    }
}
extension CellController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.backgroundView?.backgroundColor = UIColor(red: 0.976, green: 0.976, blue: 0.976, alpha: 1)
        header.textLabel?.font = UIFont(name: "SFProText-Semibold", size: 13)
        header.textLabel?.textColor = UIColor(red: 0.556, green: 0.556, blue: 0.576, alpha: 1)
    }
}
