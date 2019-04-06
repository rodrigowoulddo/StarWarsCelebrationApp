//
//  File.swift
//  Star Wars Cellebration App
//
//  Created by Rodrigo Giglio on 05/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import Foundation
import UIKit

enum AppColors{
    
    case navbar
    case friday
    case saturday
    case sunday
    
    func get() -> UIColor {
        
        switch self {
            
            case .navbar:
                return makeColor(rgbAndAlpha: [26, 26, 26, 1])
            default:
                return UIColor.black
            
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
