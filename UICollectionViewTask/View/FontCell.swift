//
//  FontCell.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontCell: UICollectionViewCell {
   
    // MARK: Outlets
    
    @IBOutlet weak var fontTitle: UILabel!
    @IBOutlet weak var fontDescription: UILabel!

    // MARK: Added border for cell
    
    override func awakeFromNib() {
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1.0
        }
    }

