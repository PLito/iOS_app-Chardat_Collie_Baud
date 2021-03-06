//
//  BarViewModel.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//


import MapKit

class BarViewModel: ObservableObject {
    
    @Published var region : MKCoordinateRegion =
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:55.39594, longitude:10.38831), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
}
