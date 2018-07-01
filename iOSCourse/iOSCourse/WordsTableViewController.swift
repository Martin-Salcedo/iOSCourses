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
  
  @IBAction func addWords(_ sender: UIBarButtonItem) {
    let alert = UIAlertController(title: "New Word", message: "please write the new word", preferredStyle: .alert)
    
    let saveWord = UIAlertAction(title: "Add", style: .default) { (UIAlertAction) -> Void in
      guard  let textField = alert.textFields?.first, let userString = textField.text else { return }
      self.words.append(userString)
      self.tableView.reloadData()
    }
    
    let cancelWord = UIAlertAction(title: "Cancel", style: .default) { (action: UIAlertAction) -> Void in}
    alert.addTextField { (textField: UITextField) -> Void in }
    alert.addAction(saveWord)
    alert.addAction(cancelWord)
    present(alert, animated: true)
  }
  
  
}
