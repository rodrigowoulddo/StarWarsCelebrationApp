//
//  Activity.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 05/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation

struct Activity {
    
    var id: Int?
    var title: String?
    var name: String?
    var description: String?
    var stage: Stage? // enum
    var track: Track? // enum
    var day: Day? // enum
    var session: Int?
    var startTime: String?
    var endTime: String?
    var image: String? // Asset Name
    var location: String? // Asset Name
    var related: [RelatedActivity]?
}

struct RelatedActivity {
    
    var image: String?
    var title: String?
    var startTime: String?
    var endTime: String?
    
    static func fromActivity(activity: Activity) -> RelatedActivity {
        return RelatedActivity(
            image: activity.image,
            title: activity.title,
            startTime: activity.startTime,
            endTime: activity.endTime
        )
    }
    
}
