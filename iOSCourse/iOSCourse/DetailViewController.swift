//
//  DetailViewController.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 10/7/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  var recipe: Recipe?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    guard let receta = recipe else { return }
    print("los datos recibidos son: \(receta.name)")
  }
  
}
