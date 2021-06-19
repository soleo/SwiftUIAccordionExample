//
//  AccordionContent.swift
//  SwiftUIAccordionExample
//
//  Created by Xinjiang Shao on 6/18/21.
//

import SwiftUI

struct AccordionContent: View {
    var busInfo: BusStop
    var body: some View {
        HStack(alignment: .top, content: {
            Text(busInfo.stopDetails)
                .bold()
            Spacer()
        })
        
    }
}

struct AccordionContent_Previews: PreviewProvider {
    static var busInfo: BusStop = BusStop(stopName: "Stop Name 1", stopDetails: "Details for the stop 1")
    
    static var previews: some View {
        AccordionContent(busInfo: busInfo)
    }
}
