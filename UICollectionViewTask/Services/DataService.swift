//
//  DataService.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    static let instance = DataService()
    
    private let fonts = [
        
        
        Fonts(title: "Copperplate", description: "Regular"),
        Fonts(title: "Heiti SC", description: "Regular"),
        Fonts(title: "Apple SD Gothic Neo", description: "Regular"),
        Fonts(title: "Thonburi", description: "Regular"),
        Fonts(title: "Gill Sans", description: "Regular"),
        Fonts(title: "Marker Felt", description: "Regular"),
        Fonts(title: "Hiragino Maru Gothic ProN", description: "Regular"),
        Fonts(title: "Courier New", description: "Regular"),
        Fonts(title: "Kohinoor Telugu", description: "Regular"),
        Fonts(title: "Heiti TC", description: "Regular"),
        Fonts(title: "Avenir Next Condensed", description: "Regular"),
        Fonts(title: "Tamil Sangam MN", description: "Regular"),
        Fonts(title: "Helvetica Neue", description: "Regular"),
        Fonts(title: "Gurmukhi MN", description: "Regular"),
        Fonts(title: "Georgia", description: "Regular"),
        Fonts(title: "Times New Roman", description: "Regular"),
        Fonts(title: "Sinhala Sangam MN", description: "Regular"),
        Fonts(title: "Arial Rounded MT Bold", description: "Regular"),
        ]
    
    func getFonts() -> [Fonts] {
    return fonts
    }
}


