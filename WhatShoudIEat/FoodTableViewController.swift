//
//  MealListViewController.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 22/08/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import UIKit
//class MealListViewController: UIViewController {
//
//}

enum SegmentedCategory: Int {
    case cook = 0, go = 1
}

enum MealCategory: Int {
    case breakfast = 0, lunch = 1, snack = 2
}

struct CellData {
    var title: String
    var description: String
    var image: UIImage?
    var segmentedcategory: SegmentedCategory
    var mealCategory: MealCategory
}

class HeadlineTableViewCell: UITableViewCell {
    @IBOutlet weak var headlineTitleLabel: UILabel!
    @IBOutlet weak var headlineDescriptionLabel: UILabel!
    @IBOutlet weak var headlineImageView: UIImageView!
}

class FoodTableViewController: UIViewController {
    
    @IBOutlet weak var foodTableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var data = [CellData]()
    var mealType: MealCategory!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodTableView.rowHeight = UITableView.automaticDimension;
        foodTableView.estimatedRowHeight = 100.0;
        
        switch mealType {
        case .breakfast?:
            self.data = [CellData.init(title: "breakfast", description: "Lorem ipsum", image: #imageLiteral(resourceName: "snack2"), segmentedcategory: SegmentedCategory.cook, mealCategory: MealCategory.breakfast), CellData.init(title: "breakfast number 2", description: "Lorem ipsum", image: #imageLiteral(resourceName: "test2"), segmentedcategory: SegmentedCategory.go, mealCategory: MealCategory.breakfast)]
        case .lunch?:
            self.data = [CellData.init(title: "lunch", description: "Lorem ipsum", image: #imageLiteral(resourceName: "pexels-photo-247685.png"), segmentedcategory: SegmentedCategory.cook, mealCategory: MealCategory.lunch)]
        case .snack?:
            self.data = [CellData.init(title: "snack", description: "Lorem ipsum", image: #imageLiteral(resourceName: "pexels-photo-247685.png"), segmentedcategory: SegmentedCategory.cook, mealCategory: MealCategory.snack)]
        default:
            fatalError("Error")
        }
        
        self.foodTableView.delegate = self
        self.foodTableView.dataSource = self
    }
}

extension FoodTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension FoodTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let segmentedIndex = segmentedControl.selectedSegmentIndex
        let segmentedEnum = SegmentedCategory(rawValue: segmentedIndex)
        let cookData = data.filter { (cellData) -> Bool in
            return cellData.segmentedcategory == segmentedEnum
        }
        return cookData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let foodCell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell

        let segmentedIndex = segmentedControl.selectedSegmentIndex
        let segmentedEnum = SegmentedCategory(rawValue: segmentedIndex)
        let cookData = data.filter { (cellData) -> Bool in
            return cellData.segmentedcategory == segmentedEnum
        }
        let cellData = cookData[indexPath.row]

        foodCell.titleLabel.text = cellData.title
        foodCell.descriptionLabel.text = cellData.description
        foodCell.foodImageView.image = cellData.image
        
        return foodCell
    }
    
}
