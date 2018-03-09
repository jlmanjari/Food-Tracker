//
//  Model.swift
//  Lakshmi-JF Tracker
//
//  Created by KK Charli on 3/8/18.
//  Copyright © 2018 Manjari. All rights reserved.
//

import Foundation

struct FoodData{
    var name:String
    var calories:Double
    var tally:Int
}

class FoodRecorder {
    
    var foods : [FoodData]
    
    init(){
        foods = []
    }
    
    func loadData() {
        foods.append(FoodData.init(name: "Popcorn", calories: 106, tally: 1))
        foods.append(FoodData.init(name: "Coke", calories: 140, tally: 1))
        foods.append(FoodData.init(name: "Potato", calories: 152, tally: 1))
    }
    
    
    func increaseTally(forItem i:Int){
        foods[i].tally += 1
    }
    
    func getCalories(forItem i:Int)->Double {
        return Double(foods[i].tally) * foods[i].calories
    }
    
    func report(forItem i:Int)->String{
        return "The calories consumed for \(foods[i].name) is \(getCalories(forItem: i))."
    }
    
    func totalCalories()->Double{
        var result = 0.0
        for i in 0 ... foods.count - 1 {
            result += getCalories(forItem: i)
        }
        return result
    }
    func combinedReport()->String {
        var res = ""
        for i in 0 ... foods.count - 1 {
            res += report(forItem: i) + "\n"
        }
        return res + "\nTotal calories consumed \(totalCalories())."
        
    }
    func reset(){
        for i in 0 ... foods.count - 1 {
            foods[i].tally = 0
        }
    }
}
