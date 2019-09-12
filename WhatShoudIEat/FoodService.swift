//
//  FoodService.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 03/09/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import Foundation

struct FoodService {
    static let breakfast = [CellData.init(title: "Granola bowl", description: "Add some fruits, granola and coconut milk!", image: #imageLiteral(resourceName: "breakfastGranola"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Pancakes", description: "Either american style pancakes with maple syrup or oat and banana pancakes", image: #imageLiteral(resourceName: "breakfastPancakes"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Avocado Toast", description: "hello have a nice day", image: #imageLiteral(resourceName: "breakfastToast"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Salmon Bagel", description: "Starbucks", image: #imageLiteral(resourceName: "lunchSalmonBagel"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Salmon Bagel", description: "Find some good donut bread maybe Lidl?", image: #imageLiteral(resourceName: "lunchSalmonBagel"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Avocado Toast", description: "Mak przy Puro", image: #imageLiteral(resourceName: "breakfastToast"), segmentedcategory: SegmentedCategory.go)]
    
    static let lunch = [CellData.init(title: "Sashimi", description: "Still looking for a nice place", image: #imageLiteral(resourceName: "lunchSashimi"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Pasta with tomato sauce", description: "Either zucchini or normal pasta", image: #imageLiteral(resourceName: "lunchTomatoSpaghetti"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Tortilla with spinach", description: "Raw nest mniam Ślusarska 6", image: #imageLiteral(resourceName: "lunchRawNestWrap"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Fajitas", description: "Use taco/fajita spice mix u can try to make your own tortilla", image: #imageLiteral(resourceName: "lunchFajitas"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Teriyaki Salmon", description: "Pinterest recipe", image: #imageLiteral(resourceName: "lunchSalmon"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Salmon poke bowl", description: "Use salmon from asia deli, add avocado, cucumber, sshi race and sesame + sesame oil, rice vinegar and soy sauce to salmon", image: #imageLiteral(resourceName: "lunchPokeBowl.PNG"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Sashimi", description: "Use salmon from asia deli on ślusarska", image: #imageLiteral(resourceName: "lunchSashimi"), segmentedcategory: SegmentedCategory.cook),]
    
    static let snack = [CellData.init(title: "Berries", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snackBerries"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Peach", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snackPeach"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Vegan Pate", description: "Asia Deli miso, curry or wakame vegan pate ślusarska", image: #imageLiteral(resourceName: "snackVeganPate"), segmentedcategory: SegmentedCategory.go)]
}
