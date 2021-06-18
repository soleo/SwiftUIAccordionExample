//
//  BusStop.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import Foundation
class BusStop {
    var stopName: String
    var stopDetails: String
    var id: UUID = UUID()
    
    init(stopName: String, stopDetails: String) {
        self.stopName = stopName
        self.stopDetails = stopDetails
    }
}
