//
//  MacrosModel.swift
//  MacroFit
//
//  Created by jeff hsu on 7/20/18.
//  Copyright © 2018 Jeffrey Hsu. All rights reserved.
//

import UIKit

class MacrosModel: NSObject {
    
    var grams: Int = 0
    var multiplier: Int = 0
    var calories: Int = 0
    
    init(multiplier: Int) {
        self.multiplier = multiplier
    }
    
    func calculateCaloriesFromGrams() {
        let caloriesFromGrams = grams * multiplier
        
        calories = caloriesFromGrams
    }
}
