//
//  Sandwich.swift
//  BodegApp
//
//  Created by Adam Diaz on 1/8/20.
//  Copyright © 2020 Adam Diaz. All rights reserved.
//

import Foundation

class Food {
    var drinks: [String]
    var sandwiches: [String]
    var snacks: [String]
    
    init(drinks: [String], sandwiches: [String], snacks: [String]) {
        self.drinks = drinks
        self.sandwiches = sandwiches
        self.snacks = snacks
    }
    
    static var food = [Food(drinks: ["Gatorade", "Water", "Milk"], sandwiches: ["Honey Turkey", "Salami"], snacks: ["m&m","jolly rancher"])]
}
