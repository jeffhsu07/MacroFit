//
//  UserModel.swift
//  MacroFit
//
//  Created by jeff hsu on 7/20/18.
//  Copyright © 2018 Jeffrey Hsu. All rights reserved.
//

import UIKit

class UserModel: NSObject {
    //These are the macros that the user is trying to hit daily
    var dailyProteinGoal = MacrosModel(multiplier: 4)
    var dailyCarbsGoal = MacrosModel(multiplier: 4)
    var dailyFatsGoal = MacrosModel(multiplier: 9)
    var dailyCalorieGoal: Int = 0
    var dailyCaloriesLeft: Int = 0
    
    //These are the macros the user has already eaten during the day
    var proteinsEaten = MacrosModel(multiplier: 4)
    var carbsEaten = MacrosModel(multiplier: 4)
    var fatsEaten = MacrosModel(multiplier: 9)
    var caloriesEaten: Int = 0
    
    //calories the user burned from cardio
    var caloriesBurned: Int = 0
    
    //Users current weight
    var weightInKg: Double = 0
    var weightInPounds: Double = 0
    
    func updateDailyMacros(protein: MacrosModel, carbs: MacrosModel, fats: MacrosModel) {
        dailyProteinGoal = protein
        dailyCarbsGoal = carbs
        dailyFatsGoal = fats
        
        //order matters here since dailyCaloriesLeft is calculated
        //based on dailyCalorieGoal
        calculateDailyCalorieGoal()
        calculateCaloriesLeft()
    }
    
    private func updateEatenMacros(protein: MacrosModel, carbs: MacrosModel, fats: MacrosModel) {
        proteinsEaten = protein
        carbsEaten = carbs
        fatsEaten = fats
        
        calculateCaloriesEaten()
        calculateCaloriesLeft()
    }
    
    func calculateCaloriesLeft() {
        dailyCaloriesLeft = dailyCalorieGoal - caloriesEaten + caloriesEaten
    }
    
    private func calculateCaloriesEaten() {
        caloriesEaten = proteinsEaten.calories + carbsEaten.calories + fatsEaten.calories
    }
    
    private func calculateDailyCalorieGoal() {
        dailyCalorieGoal = dailyProteinGoal.calories + dailyCarbsGoal.calories + dailyFatsGoal.calories
    }
    
    func updateWeight(weight: Double, inPounds: Bool) {
        if inPounds {
            weightInPounds = weight
            weightInKg = weightInPounds / 2.2
        }
        else {
            weightInKg = weight
            weightInPounds = weightInKg * 2.2
        }
    }
}
