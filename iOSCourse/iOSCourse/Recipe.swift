//
//  Recipe.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 08/07/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import Foundation
import UIKit

class Recipe {
  var name: String!
  var image: UIImage!
  var time: Int!
  var ingredients: [String]!
  var steps: [String]!
  
  init(name: String, image: UIImage, time: Int, ingredients: [String], steps: [String]) {
    self.name = name
    self.image = image
    self.time = time
    self.ingredients = ingredients
    self.steps = steps
  }
}
