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
    
    // MARK: singleton pattern

    static let instance = DataService()

    // MARK: init variables

    var fonts = [String]()
    var weightNames = [String]()
    var realFonts = [String]()
   
    // MARK: get fonts and weights
    
    init() {
    
        for font in UIFont.familyNames {
            
            // MARK:    Returns a new string in which all occurrences of a target string in the receiver are replaced by another given string.
            
            let processed = font.replacingOccurrences(of: " ", with: "")
            for fontsWithWidth in UIFont.fontNames(forFamilyName: font) {
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
   
                }
  
            }
  
        }
  
    }

    }




