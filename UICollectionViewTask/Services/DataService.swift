//
//  DataService.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation

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


//["Copperplate", "Heiti SC", "Apple SD Gothic Neo", "Thonburi", "Gill Sans", "Marker Felt", "Hiragino Maru Gothic ProN", "Courier New", "Kohinoor Telugu", "Heiti TC", "Avenir Next Condensed", "Tamil Sangam MN", "Helvetica Neue", "Gurmukhi MN", "Georgia", "Times New Roman", "Sinhala Sangam MN", "Arial Rounded MT Bold", "Kailasa", "Kohinoor Devanagari", "Kohinoor Bangla", "Chalkboard SE", "Apple Color Emoji", "PingFang TC", "Gujarati Sangam MN", "Geeza Pro", "Damascus", "Noteworthy", "Avenir", "Mishafi", "Academy Engraved LET", "Futura", "Party LET", "Kannada Sangam MN", "Arial Hebrew", "Farah", "Arial", "Chalkduster", "Kefa", "Hoefler Text", "Optima", "Palatino", "Malayalam Sangam MN", "Al Nile", "Lao Sangam MN", "Bradley Hand", "Hiragino Mincho ProN", "PingFang HK", "Helvetica", "Courier", "Cochin", "Trebuchet MS", "Devanagari Sangam MN", "Oriya Sangam MN", "Rockwell", "Snell Roundhand", "Zapf Dingbats", "Bodoni 72", "Verdana", "American Typewriter", "Avenir Next", "Baskerville", "Khmer Sangam MN", "Didot", "Savoye LET", "Bodoni Ornaments", "Symbol", "Charter", "Menlo", "Noto Nastaliq Urdu", "Bodoni 72 Smallcaps", "DIN Alternate", "Papyrus", "Hiragino Sans", "PingFang SC", "Myanmar Sangam MN", "Zapfino", "Telugu Sangam MN", "Bodoni 72 Oldstyle", "Euphemia UCAS", "Bangla Sangam MN", "DIN Condensed"]
