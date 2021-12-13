//
//  RatingView.swift
//  Place2Beer
//
//  Created by Romain Baud on 08/12/2021.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    var label = ""
    var maxRating = 5
    var onImage = Image(systemName: "star.fill")
    var offImage: Image?
    var onColor = Color.yellow
    var offColor = Color.gray
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            ForEach(1..<maxRating + 1) { number in
                self.image(for: number)
                    .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                        self.rating = number
                    }
            }
        }
        
        
    }
    
    func image(for number: Int) -> Image {
        if number <= rating {
            return onImage
        } else {
            return offImage ?? onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}
