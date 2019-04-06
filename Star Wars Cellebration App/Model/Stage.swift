//
//  Stage.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 06/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation

enum Stage {
    case celebration
    case twinSuns
    case galaxy
    
    func get() -> String {
        switch self {
        case .celebration:
            return "Celebration"
        case .twinSuns:
            return "Twin Suns"
        case .galaxy:
            return "Galaxy"
        }
    }
}
