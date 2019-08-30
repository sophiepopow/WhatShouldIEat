//
//  MealTypeView.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 18/07/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import UIKit

@IBDesignable
class MealTypeView: UIView, NibLoadable {

    @IBOutlet weak var mealTypeLabel: UILabel!
    @IBOutlet weak var mealTypeImage: UIImageView!
    @IBOutlet weak var mealTypeButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupFromNib()
    }
    
//    @IBAction func tapped() {
//
//    }
    
}
