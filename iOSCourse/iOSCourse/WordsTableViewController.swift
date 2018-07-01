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
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    let managedContext = appDelegate!.persistentContainer.viewContext
    let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "List")
    
    do {
      manageObjects = try managedContext.fetch(fetchRequest)
    } catch let error as NSError {
      print("no se pudo recuperar los datos de coredata \(error),  errorInfo \(error.userInfo)")
    }
    
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
    let appDelegate = UIApplication.shared.delegate as? AppDelegate //delegado de la aplicacion
    let manageContext = appDelegate!.persistentContainer.viewContext //
    
    guard let entity = NSEntityDescription.entity(forEntityName: "List", in: manageContext) else { return } //se crea un objeto Entity y referencia
    let managedObjet = NSManagedObject(entity: entity, insertInto: manageContext)
    
    managedObjet.setValue(word, forKeyPath: "word") //se guarda en la memoria del dispositivo
    
//    utilizando un do try, para recuperar los datos
    do { // hace la accion
      try manageContext.save()
      manageObjects.append(managedObjet)
    } catch let error as NSError { //atrapa el error
      print("no se pudo guardar el elemento, el error: \(error), errorInfo \(error.userInfo)")
    }
    
  }
  
}
