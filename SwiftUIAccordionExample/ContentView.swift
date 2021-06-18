//
//  ContentView.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = StaticDataSource()
    
    var body: some View {
        List(dataSource.stops, id: \.id) { item in
            BusStopRow(busInfo: item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
