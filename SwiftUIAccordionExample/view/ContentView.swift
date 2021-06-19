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
            VStack {
                Picker("Direction", selection: $selectedDirectionTabIndex) {
                    Text("Northbound")
                        .font(.largeTitle)
                        .tag(Direction.North)
                    Text("Southbound")
                        .font(.largeTitle)
                        .tag(Direction.South)
                }
                .pickerStyle(SegmentedPickerStyle())
                .background(Color.red)
                .clipShape(Rectangle())
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
                    dataSource.loadDataByDayOfWeekAndDirection(dayOfWeek: selectedDayTabIndex, direction: selectedDirectionTabIndex)
                })
            }
            
            ScrollView {
                LazyVStack {
                    ForEach(dataSource.stops) { item in
                        BusStopRow(busInfo: item)
                            .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var selectedDayTabIndex = DayOfWeek.Weekday
    @State static var selectedDirectionTabIndex = Direction.North
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .colorScheme(.dark)
        }
    }
}
