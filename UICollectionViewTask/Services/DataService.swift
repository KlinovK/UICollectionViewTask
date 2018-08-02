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
            
            // MARK:    Returns a new string in which all occurrences of a target string in the receiver are replaced by another given string. Возвращает новую строку, в которой все вхождения целевой строки в приемнике заменяются другой заданной строкой
            // Cut space in UIFont.fontsNames
            
            let processed = font.replacingOccurrences(of: " ", with: "")
            
            // MARK: loop through UIFont.fontNames with family name our variable -> font
            
            for fontsWithWidth in UIFont.fontNames(forFamilyName: font) {
                
                // MARK: Finds and returns the range of the first occurrence of a given string within the string. Находит и возвращает диапазон первого вхождения данной строки внутри строки.
                // Check font with weight
                
            if fontsWithWidth.range(of: processed) != nil {
                var weight = ""
                if fontsWithWidth == font {
                    // if font has't weight replace empty weight to text "basic"
                    weight = "Basic"
                } else {
                    // cut "-" before weight
                    weight = fontsWithWidth.replacingOccurrences(of: "\(processed)-", with: "")
                }
                
                // MARK: Adds results of loop through font at the end of the array fonts
                
    fonts.append(font)
                
                // MARK: Adds results of loop through fontsWithWidth at the end of the array realFonts

    realFonts.append(fontsWithWidth)
                
                // MARK: Adds weight at the end of the array weightName

    weightNames.append(weight)
    
                //Check in console results of loops
                
    print(font)
    print(weight)
    print(fontsWithWidth)
    print()
   
                }
  
            }
  
        }
  
    }

    }




