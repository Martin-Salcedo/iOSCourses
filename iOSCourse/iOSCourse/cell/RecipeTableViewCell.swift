//
//  RecipeTableViewCell.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 14/07/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
  
  @IBOutlet weak var lblTitleRecipe: UILabel!
  @IBOutlet weak var lblSubtitleRecipe: UILabel!
  @IBOutlet weak var lblTimeRecipe: UILabel!
  @IBOutlet weak var imgRecipe: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
}
