//
//  FontVC.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontVC: UIViewController {

 var font : String = ""
 var weight : String = ""
 var realFont : String = ""

//    func initData(forGroup font: ){
//        self.font = font
//
//   }
    
    @IBOutlet weak var fontTitle: UILabel!
    @IBOutlet weak var fontDescription: UILabel!
    @IBOutlet weak var fontExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {

     
        fontTitle.text = font
        fontDescription.text = weight
        fontExample.text = "Example"
        fontExample.font = UIFont(name: realFont, size: 20)
    }
    
    //MARK:  Back to mainView
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
