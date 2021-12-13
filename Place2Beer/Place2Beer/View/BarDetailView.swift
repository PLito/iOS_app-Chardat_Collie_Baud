//
//  BarDetailView.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI

struct BarDetailView: View {
    @StateObject var colorViewModel = ColorViewModel()
    
    let bar: Bar
    var body: some View {
        ZStack {
            currentColor().edgesIgnoringSafeArea(.all)
            ScrollView {
                
                Text("Longitude : " + String(bar.longitude))
                Text("Latitude : " + String(bar.latitude))
                Text("Beer price : " + String(bar.price) + " DKK")
                RatingView(rating: .constant(Int(bar.rating)))
            }
            .navigationTitle(bar.name ?? "No name")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar() {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        colorViewModel.updateCurrentColor()
                    }) {
                        Label("Change background color", systemImage: "pencil.and.outline")
                    }
                }
            }
        }
        
    
        
    }
    
    func currentColor() -> Color {
        switch(colorViewModel.colorModel.currentColor) {
        case .white :
            return Color.white
        case .blue :
            return Color(UIColor(red:12/255, green: 34/255, blue:56/255, alpha: 1))
        }
    }
}

