//
//  ViewController.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 24/06/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var orangeView: UIView!
  var constraintValues: [NSLayoutConstraint] = []//array de las constraints
  
  @IBOutlet weak var oceanView: UIView!
  
  @IBOutlet weak var contraintBottom: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    orangeView.translatesAutoresizingMaskIntoConstraints = false
    
    setAutolayout()

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func setAutolayout() {
    //    se configuran las constraint para el mismo tamaño de la vista
    let leadingConstraint = orangeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50)
    let trailingConstraint = orangeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
    
    let topConstraint = orangeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50)
    let bottonConstraint = orangeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50)
    
    //    se agregar al array de las constraint que se configuraron
    constraintValues.append(contentsOf: [leadingConstraint, trailingConstraint, topConstraint, bottonConstraint])
    
    //    animaciones
    UIView.animate(withDuration: 5.0) {
      //    se activan las contraints que previamente se configuraron
      NSLayoutConstraint.activate(self.constraintValues)
      self.contraintBottom.constant = 200
      self.view.layoutIfNeeded()
    }
  }
  
  func setOtherConstraints() {
    let widthConstraint = orangeView.widthAnchor.constraint(equalToConstant: 200)
    let heightConstraint = orangeView.heightAnchor.constraint(equalToConstant: 50)
    
    let centerXConstraint = orangeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
    let centerYConstraint = orangeView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
    
    constraintValues.append(contentsOf: [widthConstraint, heightConstraint, centerXConstraint, centerYConstraint])
    NSLayoutConstraint.activate(constraintValues)
  }

}

