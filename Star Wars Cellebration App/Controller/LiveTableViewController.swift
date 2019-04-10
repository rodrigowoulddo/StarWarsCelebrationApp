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
    
    let db: Database = Database()
    
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
        return self.db.activitiesFriday.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            return tableView.dequeueReusableCell(withIdentifier: "spotlightCell") as! SpotlightTableViewCell
        }
        
        let activityCell = tableView.dequeueReusableCell(withIdentifier: "activityCell") as! ActivityTableViewCell
        
        let activity = db.activitiesFriday[indexPath.row-1]
        
        print("construindo celula " + (activity.title ?? ""))
        print(activity.day!.getColorRGBArray())
        print(makeColor(rgbAndAlpha: activity.day!.getColorRGBArray()))

        activityCell.sideBarView.backgroundColor = makeColor(rgbAndAlpha: activity.day?.getColorRGBArray() ?? [0,0,0,1])
        activityCell.sidebarColor = makeColor(rgbAndAlpha: activity.day?.getColorRGBArray() ?? [0,0,0,1])
        activityCell.coverImageView.image = UIImage(named: activity.image ?? "error image")
        activityCell.titleLabel.text = activity.title
        activityCell.timeLabel.text = (activity.startTime ?? "00AM") + " - " + (activity.endTime ?? "00PM")
        activityCell.nameLabel.text = activity.name
        
        let stageString = "Stage " + (activity.stage?.get() ?? "none")
        let sessionString = "Session " + (String(activity.session ?? 0))
        
        activityCell.stageAndSessionLabel.text = stageString + " - " + sessionString
        activityCell.trackLabel.text = (activity.track?.get() ?? "0")
        
        return activityCell
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let activityClicked = db.activitiesFriday[indexPath.row-1]
        
        performSegue(withIdentifier: "eventSegue", sender: activityClicked)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let act = sender as? Activity {
            if let eventVC = segue.destination as? EventViewController{
                eventVC.activity = act
            }
        }
    }
    
    private func makeColor(rgbAndAlpha: [Int]) -> UIColor {
        return
            UIColor(
                red: CGFloat(rgbAndAlpha[0]/255),
                green: CGFloat (rgbAndAlpha[1]/255),
                blue: CGFloat(rgbAndAlpha[2]/255),
                alpha:  CGFloat(rgbAndAlpha[3]/255)
        )
    }
}
