//
//  ContentView.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = StaticDataSource()
    @State private var selectedTabIndex = 2
    
    var body: some View {
        MapView()
        
        VStack {
            Picker("Travel Day", selection: $selectedTabIndex, content: {
                Text("Saturday").tag(0)
                Text("Sunday").tag(1)
                Text("Weekdays").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: selectedTabIndex, perform: { value in
                print("\(selectedTabIndex)")
                dataSource.loadDataByDayOfWeek(index: selectedTabIndex)
            })
        }
        
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
