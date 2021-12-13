//
//  ColorModel.swift
//  Place2Beer
//
//  Created by Romain Baud on 13/12/2021.
//

import Foundation

enum AvailableColors: Int, CaseIterable {
    case white = 0
    case blue
}

struct ColorModel {
    var currentColor: AvailableColors = .white
    private var counter: Int = 0
    
    mutating func updateColor() {
        counter += 1
        let colorIndex = counter % AvailableColors.allCases.count
        currentColor = AvailableColors(rawValue: colorIndex)!
    }
}
