//
//  ViewController.swift
//  Star Wars Cellebration App
//
//  Created by Jobe Diego Dylbas dos Santos on 06/04/19.
//  Copyright © 2019 Rodrigo Giglio. All rights reserved.
//

import UIKit

extension UIViewController {
    func addNavBarImage() {
        
        let navController = navigationController!
        
        let image = UIImage(named: "star wars celebration logo")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width * 0.3
        let bannerHeight = navController.navigationBar.frame.size.height * 0.3
        
        let bannerX = bannerWidth  / 2 - image!.size.width * 0.3 / 2
        let bannerY = bannerHeight / 2 - image!.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
    }
}
