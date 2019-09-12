//
//  FoodViewController.swift
//  WhatShoudIEat
//
//  Created by Klaudia Popow on 09/09/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    
    @IBOutlet weak var foodInfoImage: UIImageView!
    @IBOutlet weak var foodInfoTitleLabel: UILabel!
    @IBOutlet weak var foodInfoDescriptionLabel: UILabel!
    
    var foodItem: CellData?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodInfoImage.image = foodItem?.image
        foodInfoTitleLabel.text = foodItem?.title
        foodInfoDescriptionLabel.text = foodItem?.description
        
        navigationController?.navigationBar.prefersLargeTitles = false
        
//        if let item = foodItem {
//            item.image =
//        }
    }
}
