//
//  BaseTabBarControllerTableViewController.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 08/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    @IBInspectable var defaultIndex: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = defaultIndex
    }

}
