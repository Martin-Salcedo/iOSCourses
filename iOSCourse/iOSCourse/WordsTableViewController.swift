//
//  WordsTableViewController.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 30/06/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit
import CoreData

class WordsTableViewController: UITableViewController {
  
  var manageObjects: [NSManagedObject] = [] //creando el modelo para coredata
  
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
    return manageObjects.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
    let lista = manageObjects[indexPath.row]
    cell.textLabel?.text = lista.value(forKey: "word") as? String
    
    return cell
  }
  
  @IBAction func addWords(_ sender: UIBarButtonItem) {
    let alert = UIAlertController(title: "New Word", message: "please write the new word", preferredStyle: .alert)
    
    let saveWord = UIAlertAction(title: "Add", style: .default) { (UIAlertAction) -> Void in
      guard  let textField = alert.textFields?.first, let userString = textField.text else { return }
//      self.words.append(userString)
      self.saveWord(userString)
      self.tableView.reloadData()
    }
    
    let cancelWord = UIAlertAction(title: "Cancel", style: .default) { (action: UIAlertAction) -> Void in}
    alert.addTextField { (textField: UITextField) -> Void in }
    alert.addAction(saveWord)
    alert.addAction(cancelWord)
    present(alert, animated: true)
  }
  
  func saveWord(_ word: String) {
    
  }
  
}
