//
//  BarsListView.swift
//  Place2Beer
//
//  Created by Romain Baud on 08/12/2021.
//

import SwiftUI

struct BarsListView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    let bars: FetchedResults<Bar>
    
    var body: some View {
        NavigationView {
            List {
                ForEach(bars) { bar in
                    NavigationLink(destination: BarDetailView(bar: bar)) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(bar.name ?? "No name")
                                    .font(.headline)
                                Text(String(bar.price) + " DKK")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteBars)
            }
            .navigationTitle("List of bars")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddBarView()) {
                        Label("Add Bar", systemImage: "plus")
                    }
                }
            }
        }
        
    }
    
    func deleteBars(at offsets: IndexSet) {
        for offset in offsets {
            let bar = bars[offset]
            managedObjectContext.delete(bar)
        }
        
        try? managedObjectContext.save()
    }
}
