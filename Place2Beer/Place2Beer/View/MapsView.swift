//
//  MapsView.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI
import MapKit



struct MapsView: View {
    @StateObject private var mapViewModel = MapViewModel()
    @Environment(\.managedObjectContext) var managedObjectContext
    let bars: FetchedResults<Bar>

    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapViewModel.region, showsUserLocation: false, annotationItems: bars) {
                bar in MapAnnotation(coordinate: .init(latitude: CLLocationDegrees(bar.latitude), longitude: CLLocationDegrees(bar.longitude))){
                    NavigationLink(destination: BarDetailView(bar: bar)) {
                        Text(String(bar.price))
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .background(Color.red.cornerRadius(10))
                    }
                            
                    }
                }
        }
        
    }

}
