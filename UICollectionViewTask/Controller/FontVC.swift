//
//  FontVC.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontVC: UIViewController {
    
    // MARK: outlets
    
    @IBOutlet weak var fontTitle: UILabel!
    @IBOutlet weak var fontDescription: UILabel!
    @IBOutlet weak var fontExample: UILabel!
    @IBOutlet weak var sizeLbl: UILabel!
    
    // MARK: variables
    
    var font : String = ""
    var weight : String = ""
    var realFont : String = ""
    var sizeOffont = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {

        // MARK: show data in labels
     
        fontTitle.text = font
        fontDescription.text = weight
        
          // MARK: use realFonts for text examle
        
        fontExample.text = "Example"
        fontExample.font = UIFont(name: realFont, size: 20)
        sizeLbl.text = " : \(20)pt"
    
    }
    
    // MARK:  Back to mainView
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
