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
    var recipe = Recipe(name: "Sopa de Tortilla", image: #imageLiteral(resourceName: "sopa_tortilla"), time: 30, ingredients: ["tortilla", "frijoles", "aguacate", "crema", "chicharron", "queso"], steps: ["1. Freir la tortilla y prepara el caldo", "2. partir el aguacate", "3. servir la sopa en el plato", "4. poner aguate, chicharron y crema al gusto"])
    recipes.append(recipe)
    recipe = Recipe(name: "Pizza de Peperonni", image: #imageLiteral(resourceName: "pizza"), time: 40, ingredients: ["masa", "peperoni", "salsa de tomate", "queso", "picante"], steps: ["1. amazar la masa", "2. cortar el peperoni", "3. extender la masa y expacir salsa de tomate", "4. espacir peperoni al rededor de la pizza", "espacir queso y picante al gusot", "5. cocina al horno por 20 min"])
    recipes.append(recipe)
    recipe = Recipe(name: "Torta huazteca", image: #imageLiteral(resourceName: "torta_azteca"), time: 60, ingredients: ["tortilla", "salsa", "crema", "pollo", "queso", "cebolla"], steps: ["1. freir la tortillas", "2. prepara la salsa", "3. en un recipiente poner las tortillas y a la vez poner salsa", "4. deshebrar el pollo", "5. poner pollo y queso a cada capa (puede hacer las capas que desee)"])
    recipes.append(recipe)
    recipe = Recipe(name: "Ensalada Cesar", image: #imageLiteral(resourceName: "ensalada_cesar"), time: 12, ingredients: ["lechiga", "nueces", "queso", "pollo", "manzana", "pera", "uvas"], steps: ["1. lavar lechuga, manzana, pera y uvas", "2. cortar lechuga", "3. preparar la lechuga para añadir los demas ingredientes", "4. poner manzana y pera al gusto"])
    recipes.append(recipe)
    recipe = Recipe(name: "Hamburgesa triple", image: #imageLiteral(resourceName: "hamburguesa"), time: 26, ingredients: ["pan", "carne", "lechuga", "jitomate", "queso", "cebolla", "pepinillos"], steps: ["1. freir la carne por 20 min", "2. poner mayonesa al pan", "3. poner la carne en el pan", "4. cortar el jitomate y ponerlo sobre la hambuerguesa", "5. poner el queso a gusto", "6. poner cebolla y picante al gusto"])
    recipes.append(recipe)
  }
  
  override var prefersStatusBarHidden: Bool {
    return true
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecipeTableViewCell
    guard let nameRecipe = recipes[indexPath.row].name, let imageDish = recipes[indexPath.row].image, let timeRecipe = recipes[indexPath.row].time else { return cell }
    cell.imgRecipe.image = imageDish
    cell.lblTitleRecipe.text = nameRecipe
    
    cell.lblTimeRecipe.text = "Tiempo: \(timeRecipe) min"
    cell.lblSubtitleRecipe.text = "Ingredientes: \(recipes[indexPath.row].ingredients.count)"
    cell.imgRecipe.layer.cornerRadius = cell.imgRecipe.bounds.height / 2.0
    cell.imgRecipe.clipsToBounds = true
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("selecciono \(recipes[indexPath.row].name)")
  }
}

