//
//  BarDetailView.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI

struct BarDetailView: View {
    let bar: Bar
    var body: some View {
        ScrollView {
            Text(String(bar.longitude))
            Text(String(bar.latitude))
            Text(String(bar.price))
            RatingView(rating: .constant(Int(bar.rating)))
        }
        //.navigationTitle(bar.name ?? "No name")
        //.navigationBarTitleDisplayMode(.inline)
    }
}

