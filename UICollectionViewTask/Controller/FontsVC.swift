//
//  ViewController.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
    

    @IBOutlet weak var fontCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fontCollectionView.dataSource = self
        fontCollectionView.delegate = self
     
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getFonts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FontCell", for: indexPath) as? FontCell {
            let font = DataService.instance.getFonts()[indexPath.row]
            cell.updateViews(font: font)
            return cell
        } else {
          return  FontCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let font = DataService.instance.getFonts()[indexPath.row]
        guard let FontVC = storyboard?.instantiateViewController(withIdentifier: "GoToFontVC") as? FontVC else { return }
        FontVC.initData(forGroup: font)
        presentDetail(FontVC)
    }
    
   
    
    

}

