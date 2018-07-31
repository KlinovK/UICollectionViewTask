//
//  FontCell.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class FontCell: UICollectionViewCell {
    
    @IBOutlet weak var fontTitle: UILabel!
    @IBOutlet weak var fontDescription: UILabel!
    
    func updateViews(font: Fonts)  {
        fontTitle.text = font.title
        fontDescription.text = font.description
    }
}
