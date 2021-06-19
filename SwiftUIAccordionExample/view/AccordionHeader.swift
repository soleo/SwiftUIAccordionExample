//
//  AccordionHeader.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import SwiftUI

struct AccordionHeader: View {
    var busInfo: BusStop
    var isExpanded: Bool
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 0, content: {
                Text(busInfo.stopName)
                Image(systemName: "location.north")
                    .rotationEffect(.degrees(busInfo.direction == Direction.North.description ? 0 : 180))
                    .padding(.top)
                    
            })
            Spacer()
        
            Image(systemName: "chevron.up")
              .rotationEffect(.degrees(isExpanded ? 0 : 180))
              .animation(.easeInOut)
            
        }
        
        
    }
}

struct AccordionHeader_Previews: PreviewProvider {
    static var busInfo: BusStop = BusStop(stopName: "Stop Name 1", stopDetails: "Details for the stop 1", direction: Direction.South.description)
    static var previews: some View {
        AccordionHeader(busInfo: busInfo, isExpanded: true)
        AccordionHeader(busInfo: busInfo, isExpanded: false)
    }
}
