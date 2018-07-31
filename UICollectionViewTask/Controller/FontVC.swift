//
//  ViewController.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontVC: UIViewController {

    @IBOutlet weak var fontCollectionView: UICollectionView!
    
    var fonts = UIFont.fontNames
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        print(fonts)
        
//        for familyName in UIFont.familyNames {
//            print(UIFont.familyNames)
//        }
        
    }



}

