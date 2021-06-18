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
}
