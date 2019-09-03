//
//  FoodService.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 03/09/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import Foundation

struct FoodService {
    static let breakfast = [CellData.init(title: "breakfast", description: "Very long breakfast description hello have a nice day", image: #imageLiteral(resourceName: "snack2"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "breakfast number 2", description: "Lorem ipsum", image: #imageLiteral(resourceName: "test2"), segmentedcategory: SegmentedCategory.go)]
    
    static let lunch = [CellData.init(title: "lunch", description: "Lorem ipsum", image: #imageLiteral(resourceName: "pexels-photo-247685.png"), segmentedcategory: SegmentedCategory.cook)]
    
    static let snack = [CellData.init(title: "snack", description: "Lorem ipsum", image: #imageLiteral(resourceName: "pexels-photo-247685.png"), segmentedcategory: SegmentedCategory.cook)]
}
