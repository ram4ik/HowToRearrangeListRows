//
//  ContentView.swift
//  HowToRearrangeListRows
//
//  Created by Ramill Ibragimov on 27.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var flavors = ["Vanilla", "Strawberry", "Chocolate"]
    var body: some View {
        NavigationView {
            List {
                ForEach(flavors, id: \.self) { flavorName in
                    Text(flavorName)
                }
                .onMove { (indexSet, index) in
                    self.flavors.move(fromOffsets: indexSet, toOffset: index)
                }
            }
        .navigationBarTitle("Flavors")
        .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
