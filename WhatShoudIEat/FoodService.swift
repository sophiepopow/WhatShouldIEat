//
//  FoodService.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 03/09/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import Foundation
import UIKit

struct JSON: Codable {
    let meals: [Meal]
}

struct Meal: Codable {
    var type: String
    var dishes: [Dish]
    
    struct Dish: Codable {
        var title: String
        var description: String
        var image: String
        var segmentedCategory: String
    }
}

struct FoodService {
    static var json: JSON?
    static var breakfast: [CellData] {
        return cellData(for: "breakfast")
    }
    static var lunch: [CellData] {
        return cellData(for: "lunch")
    }
    static var snack: [CellData] {
        return cellData(for: "snack")
    }
//    static let lunch = [CellData.init(title: "Sashimi", description: "Still looking for a nice place", image: #imageLiteral(resourceName: "lunchSashimi"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Pasta with tomato sauce", description: "Either zucchini or normal pasta", image: #imageLiteral(resourceName: "lunchTomatoSpaghetti"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Tortilla with spinach", description: "Raw nest mniam Ślusarska 6", image: #imageLiteral(resourceName: "lunchRawNestWrap"), segmentedcategory: SegmentedCategory.go), CellData.init(title: "Fajitas", description: "Use taco/fajita spice mix u can try to make your own tortilla", image: #imageLiteral(resourceName: "lunchFajitas"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Teriyaki Salmon", description: "Pinterest recipe", image: #imageLiteral(resourceName: "lunchSalmon"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Salmon poke bowl", description: "Use salmon from asia deli, add avocado, cucumber, sshi race and sesame + sesame oil, rice vinegar and soy sauce to salmon", image: #imageLiteral(resourceName: "lunchPokeBowl.PNG"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Sashimi", description: "Use salmon from asia deli on ślusarska", image: #imageLiteral(resourceName: "lunchSashimi"), segmentedcategory: SegmentedCategory.cook),]
//
//    static let snack = [CellData.init(title: "Berries", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snackBerries"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Peach", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snackPeach"), segmentedcategory: SegmentedCategory.cook), CellData.init(title: "Vegan Pate", description: "Asia Deli miso, curry or wakame vegan pate ślusarska", image: #imageLiteral(resourceName: "snackVeganPate"), segmentedcategory: SegmentedCategory.go)]
//
    static func load() {
        let decoder = JSONDecoder()
        let url = Bundle.main.url(forResource: "foodData", withExtension: "json")!
        do {
            json = try decoder.decode(JSON.self, from: Data(contentsOf: url))
        } catch let error {
            print("\(error)")
        }
    }
    
    static func cellData(for mealType: String) -> [CellData] {
        return json!.meals.first(where: { $0.type == mealType })!.dishes.map({
            return CellData(title: $0.title, description: $0.description, image: UIImage(named: $0.image), segmentedcategory: SegmentedCategory(rawValue: $0.segmentedCategory)!)
        })
    }
}
