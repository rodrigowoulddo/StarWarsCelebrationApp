//
//  Track.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 06/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation

enum Track {
    case jedi
    case rebel
    case empire
    
    func get() -> String {
        switch self {
        case .jedi:
            return "Jedi"
        case .rebel:
            return "Rebel"
        case .empire:
            return "Empire"
        }
    }
}
