//
//  Day.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 06/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation

enum Day {
    case friday
    case saturday
    case sunday
    
    func get() -> String {
        switch self{
        case .friday:
            return "Friday"
        case .saturday:
            return "Saturday"
        case .sunday:
            return "Sunday"
        }
    }
    
    func getColorRGBArray() -> [Int]{
        switch self {
        case .friday:
            return [79,188,182,1]
        case .saturday:
            return [229, 174, 9, 1]
        case .sunday:
            return [210, 27, 8, 1]
        }
    }
    
    
}
