//
//  WordsTableViewController.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 30/06/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
  
  var words: [String] = ["Lunes", "Kaaz", "mes", "mininho", "Noviembre"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return words.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
    cell.textLabel?.text = words[indexPath.row]
    
    return cell
  }
  
}
