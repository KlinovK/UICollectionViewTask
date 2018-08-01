//
//  ViewController.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    

    @IBOutlet weak var fontCollectionView: UICollectionView!
    
    var fonts = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fontCollectionView.dataSource = self
        fontCollectionView.delegate = self
        
        fonts = UIFont.familyNames

       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fonts.count
            //DataService.instance.getFonts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FontCell", for: indexPath) as? FontCell {
            
            cell.fontTitle.text = fonts[indexPath.row]
            
            return cell
//            let font = DataService.instance.getFonts()[indexPath.row]
//            cell.updateViews(font: font)
//            return cell
//        } else {
//          return  FontCell()
//        }
        } else {
            return FontCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let font = fonts[indexPath.row]
        guard let FontVC = storyboard?.instantiateViewController(withIdentifier: "GoToFontVC") as? FontVC else { return }
        FontVC.font = font
        presentDetail(FontVC)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2, height: view.frame.height / 4)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }



}
