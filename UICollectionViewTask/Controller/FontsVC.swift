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
    var weightNames = [String]()
    var realFonts = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fontCollectionView.dataSource = self
        fontCollectionView.delegate = self

       for font in UIFont.familyNames {
            let processed = font.replacingOccurrences(of: " ", with: "")
            for fontsWithWidth in UIFont.fontNames(forFamilyName: font)
            {
                if fontsWithWidth.range(of: processed) != nil {
                    var weight = ""
                    if fontsWithWidth == font {
                        weight = "Basic"
                    } else {
                        weight = fontsWithWidth.replacingOccurrences(of: "\(processed)-", with: "")
                    }
                    fonts.append(font)
                    realFonts.append(fontsWithWidth)
                    weightNames.append(weight)
                    
                    print(font)
                    print(weight)
                    print()
                }
            }
        }
    }
    
    
//        fonts.forEach({ familyName in
//            let weight = UIFont.fontNames(forFamilyName: familyName)
//            print(weight)
//        })
////        weight = UIFont.description()
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fonts.count
            //DataService.instance.getFonts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FontCell", for: indexPath) as? FontCell {
            let fontName = fonts[indexPath.row]
            let font = realFonts[indexPath.row]
            let weightName =  weightNames[indexPath.row]
            
            cell.fontTitle.text = fontName
            cell.fontTitle.font = UIFont(name: font, size: 20)
            
            cell.fontDescription.text = weightName
            
            return cell
        } else {
            return FontCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let FontVC = storyboard?.instantiateViewController(withIdentifier: "GoToFontVC") as? FontVC else { return }
        FontVC.font = fonts[indexPath.row]
        FontVC.weight = weightNames[indexPath.row]
        FontVC.realFont = realFonts[indexPath.row]
        
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
