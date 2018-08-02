//
//  ViewController.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    // MARK: Outlet

    @IBOutlet weak var fontCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: delegate and dataSource for collectionView
        
        fontCollectionView.dataSource = self
        fontCollectionView.delegate = self

    }
    
    // MARK: pass data to collectionviewCell
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return   DataService.instance.fonts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FontCell", for: indexPath) as? FontCell {
            let fontName = DataService.instance.fonts[indexPath.row]
            let font = DataService.instance.realFonts[indexPath.row]
            let weightName = DataService.instance.weightNames[indexPath.row]
            
            cell.fontTitle.text = fontName
            cell.fontTitle.font = UIFont(name: font, size: 20)
            cell.fontDescription.text = weightName
            
            return cell
        } else {
            return FontCell()
        }
    }
    
    // MARK: segue to FontVC
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let FontVC = storyboard?.instantiateViewController(withIdentifier: "GoToFontVC") as? FontVC else { return }
        FontVC.font = DataService.instance.fonts[indexPath.row]
        FontVC.weight = DataService.instance.weightNames[indexPath.row]
        FontVC.realFont = DataService.instance.realFonts[indexPath.row]
        
        //MARK: simple animation
        
         //  present(FontVC, animated: true, completion: nil)
        
        // MARK: custom animation of segue
     
       presentDetail(FontVC)
    }

    // MARK: autolayout for cell
    
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
