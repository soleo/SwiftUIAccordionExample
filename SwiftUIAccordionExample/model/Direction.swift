//
//  Direction.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/19/21.
//

import Foundation

enum Direction: CustomStringConvertible {
    case North
    case South
    case West
    case East
    
    var description: String {
        switch self {
        case .North:
            return "North"
        case .South:
            return "South"
        case .West:
            return "West"
        case .East:
            return "East"
        }
    }
}
