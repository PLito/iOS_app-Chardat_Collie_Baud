//
//  MapsView.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI
import MapKit



struct MapsView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    let bars: FetchedResults<Bar>


    @State private var region : MKCoordinateRegion =
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:55.39594, longitude:10.38831), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region, showsUserLocation: false, annotationItems: bars) {
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
