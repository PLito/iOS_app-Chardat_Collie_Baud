//
//  ContentView.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(sortDescriptors: []) var bars: FetchedResults<Bar>

    var body: some View {
        TabView {
            BarsListView(bars: bars)
                .tabItem {
                    Label("Bars List", systemImage: "list.dash")
                }
            MapsView(bars: bars)
                .tabItem {
                    Label("Maps", systemImage: "square.and.pencil")
            }
            /*ForEach(bars) { bar in
                BarDetailView(bar: bar)
                    .tabItem {
                        Label("Maps", systemImage: "square.and.pencil")
                }
            }*/
            
        }
               
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
