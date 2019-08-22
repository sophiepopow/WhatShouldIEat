//
//  MealTypeSwitchControler.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 18/08/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import UIKit

@IBDesignable
class MealTypeSwitchControler: UIView, NibLoadable {
    
    @IBOutlet weak var mealTypeLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupFromNib()
    }
    
}
