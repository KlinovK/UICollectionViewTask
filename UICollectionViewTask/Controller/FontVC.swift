//
//  FontVC.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontVC: UIViewController {

//    var font: Fonts1?
//
//
//    func initData(forGroup font: Fonts1){
//        self.font = font
//
//   }
    
    @IBOutlet weak var fontTitle: UILabel!
    @IBOutlet weak var fontDescription: UILabel!
    @IBOutlet weak var fontExample: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
//       fontTitle.text = font?.familyNames as? String
//    fontDescription.text = font?.weight as? String
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
