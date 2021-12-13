//
//  ColorViewModel.swift
//  Place2Beer
//
//  Created by Romain Baud on 13/12/2021.
//

import Foundation

class ColorViewModel: ObservableObject {
    @Published var colorModel = ColorModel()
    
    func updateCurrentColor() {
        colorModel.updateColor()
    }
}
