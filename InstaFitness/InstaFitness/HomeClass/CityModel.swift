//
//  CityModel.swift
//  InstaFitness
//
//  Created by mac on 8/17/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class CityModel: NSObject {
var city:[City] = []
func setCityData()
 {
    let obj = City(name: "Agra")
    let obj1 = City(name: "Delhi")
    let obj2 = City(name: "Bhopal")
    let obj3 = City(name: "Us")
    city.removeAll()
    city.append(obj)
    city.append(obj1)
    city.append(obj2)
    city.append(obj3)
 }
}
struct City {
 var name:String
}

