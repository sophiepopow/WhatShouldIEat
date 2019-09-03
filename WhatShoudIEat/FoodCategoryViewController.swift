//
//  ViewController.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 17/07/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import UIKit

class FoodCategoryViewController: UIViewController {
    
    @IBOutlet weak var breakfastView: MealTypeView!
    @IBOutlet weak var lunchView: MealTypeView!
    @IBOutlet weak var snackView: MealTypeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        breakfastView.mealTypeLabel.text = "breakfast"
        breakfastView.mealTypeLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        lunchView.mealTypeLabel.text = "lunch"
        lunchView.mealTypeLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        snackView.mealTypeLabel.text = "snack"
        snackView.mealTypeLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        breakfastView.mealTypeImage.image = UIImage(named: "breakfast")
        lunchView.mealTypeImage.image = UIImage(named: "lunch")
        snackView.mealTypeImage.image = UIImage(named: "snack")
        
        breakfastView.mealTypeButton.addTarget(self, action: #selector(showFoodTableViewController(sender:)), for: .touchUpInside)
        lunchView.mealTypeButton.addTarget(self, action: #selector(showFoodTableViewController(sender:)), for: .touchUpInside)
        snackView.mealTypeButton.addTarget(self, action: #selector(showFoodTableViewController(sender:)), for: .touchUpInside)

        //add photos and crop them
        //after tapping mealTypeView, move to different view
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "What Should I Eat?"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
    //     to trzeba wywolac po kliknieciu / tapnieciu na jeden z 3 widokow
    @objc func showFoodTableViewController(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let foodTableViewController = storyboard.instantiateViewController(withIdentifier: "FoodTableViewController") as! FoodTableViewController
        
        let data: [CellData]
        switch sender {
        case breakfastView.mealTypeButton:
            data = FoodService.breakfast
        case lunchView.mealTypeButton:
            data = FoodService.lunch
        case snackView.mealTypeButton:
            data = FoodService.snack
        default:
            fatalError("Unkown meal Type button")
        }
//        foodTableViewController.data = data.filter { (cellData) -> Bool in
//            return cellData.mealCategory == mealTypeEnum
//        }
        
        //        foodTableViewController.data = // ustawić na data w zależnosci od tapnietego widoku oraz switcha czy tam segmented controll
        foodTableViewController.data = data
        self.navigationController?.show(foodTableViewController, sender: self)
    }
    
}

