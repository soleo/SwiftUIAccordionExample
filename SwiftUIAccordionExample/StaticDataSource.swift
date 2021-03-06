//
//  StaticDataSource.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import Foundation
import SwiftUI

class StaticDataSource : ObservableObject {
    @Published var stops: [BusStop]
    
    init() {
        self.stops = [
            BusStop(stopName: "Stop 1", stopDetails: "Arriving Time for stop 1"),
            BusStop(stopName: "Stop 2", stopDetails: "Arriving Time for stop 2"),
            BusStop(stopName: "Stop 3", stopDetails: "Arriving Time for stop 3"),
            BusStop(stopName: "Stop 4", stopDetails: "Arriving Time for stop 4")
        ]
    }
    
    func loadDataByDirection(direction: Direction) {
        self.stops = [
            BusStop(stopName: "Stop 1", stopDetails: "Arriving Time for stop 1", direction: direction.description),
            BusStop(stopName: "Stop 2", stopDetails: "Arriving Time for stop 2", direction: direction.description),
            BusStop(stopName: "Stop 3", stopDetails: "Arriving Time for stop 3", direction: direction.description),
            BusStop(stopName: "Stop 4", stopDetails: "Arriving Time for stop 4", direction: direction.description)
        ]
    }
    
    func loadDataByDayOfWeekAndDirection(dayOfWeek: DayOfWeek, direction: Direction) {
        if (dayOfWeek == DayOfWeek.Saturday) {
            self.stops = [
                BusStop(stopName: "Sat. Stop 1", stopDetails: "Arriving Time for stop 1", direction: direction.description),
                BusStop(stopName: "Sat. Stop 2", stopDetails: "Arriving Time for stop 2", direction: direction.description),
                BusStop(stopName: "Sat. Stop 3", stopDetails: "Arriving Time for stop 3", direction: direction.description),
                BusStop(stopName: "Sat. Stop 4", stopDetails: "Arriving Time for stop 4", direction: direction.description)
            ]
        } else if(dayOfWeek == DayOfWeek.Sunday) {
            self.stops = [
                BusStop(stopName: "Sun. Stop 1", stopDetails: "Arriving Time for stop 1",
                        direction: direction.description),
                BusStop(stopName: "Sun. Stop 2", stopDetails: "Arriving Time for stop 2",
                        direction: direction.description),
                BusStop(stopName: "Sun. Stop 3", stopDetails: "Arriving Time for stop 3",
                        direction: direction.description),
                BusStop(stopName: "Sun. Stop 4", stopDetails: "Arriving Time for stop 4",
                        direction: direction.description)
            ]
        } else {
            self.stops = [
                BusStop(stopName: "Stop 1", stopDetails: "Arriving Time for stop 1",
                        direction: direction.description),
                BusStop(stopName: "Stop 2", stopDetails: "Arriving Time for stop 2",
                        direction: direction.description),
                BusStop(stopName: "Stop 3", stopDetails: "Arriving Time for stop 3",
                        direction: direction.description),
                BusStop(stopName: "Stop 4", stopDetails: "Arriving Time for stop 4",
                        direction: direction.description)
            ]
        }
        
    }
}
