//
//  MealListViewController.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 22/08/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import UIKit

enum SegmentedCategory {
    case cook, go
}

struct CellData {
    var title: String
    var description: String
    var image: UIImage?
    var segmentedcategory: SegmentedCategory
}

class FoodTableViewController: UIViewController {
    
    @IBOutlet weak var foodTableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var randomButton: UIButton!
    
    var data = [CellData]()
    
    private var filteredData = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodTableView.rowHeight = UITableView.automaticDimension
        foodTableView.estimatedRowHeight = 100.0
        
        filter()
        
        self.foodTableView.delegate = self
        self.foodTableView.dataSource = self
    }
    
    func filter() {
        filteredData = data.filter { $0.segmentedcategory == .cook }
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            filteredData = data.filter { $0.segmentedcategory == .cook }
        case 1:
            filteredData = data.filter { $0.segmentedcategory == .go }
        default:
            break
        }
        foodTableView.reloadData()
    }
    
    @IBAction func randomise(_ sender: Any) {
        //randomly choose food
        //go to next UIViewController
    }
}

extension FoodTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension FoodTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodCell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        
        let cellData = filteredData[indexPath.row]
        
        foodCell.titleLabel.text = cellData.title
        foodCell.descriptionLabel.text = cellData.description
        foodCell.foodImageView.image = cellData.image
        
        return foodCell
    }
    
//    @objc func showRandomFood(sender: UIButton){
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let foodView = storyboard.instantiateViewController(withIdentifier: "FoodViewController") as! FoodViewController
//
//        let data: [CellData]
////        switch sender {
////        case breakfastView.mealTypeButton:
////            data = FoodService.breakfast
////        case lunchView.mealTypeButton:
////            data = FoodService.lunch
////        case snackView.mealTypeButton:
////            data = FoodService.snack
////        default:
////            fatalError("Unkown meal Type button")
////        }
//
//        foodView.data = data
//        self.navigationController?.show(foodView, sender: self)
//    }
}

