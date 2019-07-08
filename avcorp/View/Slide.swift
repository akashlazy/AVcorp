//
//  Slide1.swift
//  avcorp
//
//  Created by Akash Jambhulkar on 08/07/19.
//  Copyright © 2019 Akash Jambhulkar. All rights reserved.
//

import UIKit

class Slide: UIView {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc1: UILabel!
    @IBOutlet weak var lblDesc2: UILabel!
    
    @IBOutlet weak var top: NSLayoutConstraint!
    
    override func layoutSubviews() {
        
        if UIDevice.current.orientation.isLandscape {
            //            imgHeight.constant = 150
            //            imgWidth.constant = 150
            top.constant = 10
        } else {
            //            imgHeight.constant = 200
            //            imgWidth.constant = 200
            top.constant = 44
        }
    }
}
