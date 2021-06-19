//
//  BusStopRow.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import SwiftUI

struct BusStopRow: View {
    @State var isExpanded: Bool = false
    
    var busInfo: BusStop
    
    var body: some View {
        VStack {
            AccordionHeader(busInfo: busInfo, isExpanded: isExpanded)
                .onTapGesture {
                    self.isExpanded.toggle()
                }
                .padding()
                
            if isExpanded {
                AccordionContent(busInfo: busInfo)
                .padding()
                .animation(.default)
            }
            
        }
    }
}

struct BusStopRow_Previews: PreviewProvider {
    static var busInfo: BusStop = BusStop(stopName: "Stop 1", stopDetails: "details about this bus stop")
    @State static var isExpanded = true
    
    static var previews: some View {
        Group {
            BusStopRow(isExpanded: isExpanded, busInfo: busInfo)
            BusStopRow(isExpanded: !isExpanded, busInfo: busInfo)
        }
    }
        
    
}
