//
//  AddBarView.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI

struct AddBarView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State private var name = ""
    @State private var longitude = ""
    @State private var latitude = ""
    @State private var price = ""
    @State private var rating = 3
    

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name of bar", text: $name)
                    TextField("Price of beer", text: $price)
                    
                }
                Section {
                    Text("Coordinates")
                    TextField("Longitude", text: $longitude)
                    TextField("Latitude", text: $latitude)
                }
                
                Section{
                    Text("Rating")
                    RatingView(rating: $rating)
                }
                
                Section {
                    Button("Save") {
                        let newBar = Bar(context: managedObjectContext)
                        newBar.id = UUID()
                        newBar.name = name
                        newBar.price = Int64(price) ?? 0
                        newBar.longitude = Float(longitude) ?? 0
                        newBar.latitude = Float(latitude) ?? 0
                        newBar.rating = Int16(rating)
                        
                        try? managedObjectContext.save()
                    }
                    
                }
            }
            .navigationBarTitle("Add Bar")
    }
        
        
}
}

struct AddBarView_Previews: PreviewProvider {
    static var previews: some View {
        AddBarView()
    }
}
