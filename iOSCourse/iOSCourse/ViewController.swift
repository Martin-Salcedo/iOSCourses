//
//  ViewController.swift
//  iOSCourse
//
//  Created by Jose Martin Salcedo Lazaro on 24/06/18.
//  Copyright © 2018 Jose Martin Salcedo Lazaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    setUpCollectionView(collection: collectionView)
  }

  @IBOutlet weak var collectionView: UICollectionView!
  
  func setUpCollectionView(collection: UICollectionView) {
    collection.delegate = self
    collection.dataSource = self
  }
  
}

extension ViewController: UICollectionViewDelegate {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    
    let red = CGFloat(Int(arc4random_uniform(155)) + 100)
    let blue = CGFloat(Int(arc4random_uniform(155)) + 100)
    let green = CGFloat(Int(arc4random_uniform(155)) + 100)
    
    
    cell.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
//    cell.backgroundColor = UIColor.blue
    return cell
  }
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 100
  }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//    let screen = UIScreen.main.bounds
////    return CGSize(width: screen.width, height: screen.height)
//  }
  
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//    return 10.0
//  }
}
