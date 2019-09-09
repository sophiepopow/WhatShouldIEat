//
//  FoodService.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 03/09/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import Foundation

struct FoodService {
    static let breakfast = [CellData.init(title: "Granola bowl", description: "Very long breakfast description hello have a nice day", image: #imageLiteral(resourceName: "breakfastGranola"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Pancakes", description: "Lorem ipsum", image: #imageLiteral(resourceName: "breakfastPancakes"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Avocado Toast", description: "Very long breakfast description hello have a nice day", image: #imageLiteral(resourceName: "breakfastToast"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Salmon Donut", description: "Starbucks", image: #imageLiteral(resourceName: "breakfastSalmonDonut"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Salmon Donut", description: "Lorem ipsum", image: #imageLiteral(resourceName: "breakfastSalmonDonut"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Avocado Toast", description: "Mak przy Puro", image: #imageLiteral(resourceName: "breakfastToast"), segmentedcategory: SegmentedCategory.go)]
    
    static let lunch = [CellData.init(title: "Sashimi", description: "Lorem ipsum", image: #imageLiteral(resourceName: "lunchSashimi"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Pasta with toamto sauce", description: "Lorem ipsum", image: #imageLiteral(resourceName: "lunchTomatoSpaghetti"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Tortilla with spinach", description: "Raw nest", image: #imageLiteral(resourceName: "lunchRawNestWrap"), segmentedcategory: SegmentedCategory.go)]
    
    static let snack = [CellData.init(title: "Berries", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snackBerries"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Peach", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snackPeach"), segmentedcategory: SegmentedCategory.cook),]
}
