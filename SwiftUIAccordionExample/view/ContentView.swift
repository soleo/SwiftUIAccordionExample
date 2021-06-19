//
//  ContentView.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = StaticDataSource()
    @State private var selectedDayTabIndex = DayOfWeek.Weekday
    @State private var selectedDirectionTabIndex = Direction.North
    
    var body: some View {
        VStack {
            Picker("Direction", selection: $selectedDirectionTabIndex) {
                Text("Northbound").tag(Direction.North)
                Text("Southbound").tag(Direction.South)
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: selectedDirectionTabIndex, perform: { value in
                print(selectedDirectionTabIndex)
                dataSource.loadDataByDirection(direction: selectedDirectionTabIndex)
            })
        }
        
        MapView()
        
        VStack {
            Picker("Travel Day", selection: $selectedDayTabIndex, content: {
                Text("Saturday").tag(DayOfWeek.Saturday)
                Text("Sunday").tag(DayOfWeek.Sunday)
                Text("Weekday").tag(DayOfWeek.Weekday)
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: selectedDayTabIndex, perform: { value in
                print("\(value)")
                dataSource.loadDataByDayOfWeek(dayOfWeek: selectedDayTabIndex, direction: selectedDirectionTabIndex)
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
