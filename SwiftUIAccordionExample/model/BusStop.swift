//
//  BusStop.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import Foundation
struct BusStop: Identifiable, Hashable, Codable {
    var stopName: String
    
    var stopDetails: String
    
    var direction: String = "North"
    
    var id: UUID = UUID()
}
