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
    case fridayColor
    case saturdayColor
    case sundayColor
    case yellowApp
    
    func get() -> UIColor {
        
        switch self {
            case .navbar:
                return makeColor(rgbAndAlpha: [26, 26, 26, 1])
            case .fridayColor:
                return makeColor(rgbAndAlpha: [79,188,182,1])
            case .saturdayColor:
                return makeColor(rgbAndAlpha: [229, 174, 9, 1])
            case .sundayColor:
                return makeColor(rgbAndAlpha: [210, 27, 8, 1])
            case .yellowApp:
                return makeColor(rgbAndAlpha: [255, 233, 0, 1])
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
