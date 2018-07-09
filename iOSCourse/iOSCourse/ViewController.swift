//
//  ViewController.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 24/06/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
  var recipes: [Recipe] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    var recipe = Recipe(name: "Sopa de Tortilla")
    recipes.append(recipe)
    recipe = Recipe(name: "Pizza de Peperonni")
    recipes.append(recipe)
    recipe = Recipe(name: "Torta huazteca")
    recipes.append(recipe)
    recipe = Recipe(name: "Ensalada Cesar")
    recipes.append(recipe)
    recipe = Recipe(name: "Hamburgesa triple")
    recipes.append(recipe)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return recipes.count
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    guard let nameRecipe = recipes[indexPath.row].name else { return cell }
    cell.textLabel?.text = nameRecipe
    return cell
  }
}

