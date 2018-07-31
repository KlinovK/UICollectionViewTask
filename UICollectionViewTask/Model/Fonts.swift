//
//  Fonts.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation
import UIKit

//var fonts = UIFont.familyNames



struct Fonts {
    private(set) public var title: String
    private(set) public var description: String
    
    
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
