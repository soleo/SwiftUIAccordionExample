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
        VStack{
            AccordionHeader(busInfo: busInfo, isExpanded: isExpanded)
                .onTapGesture {
                    self.isExpanded = !self.isExpanded
                }
                .padding()
                
            
            if(isExpanded) {
                AccordionContent(busInfo: busInfo)
                    .padding()
                    .animation(.default)
            }
        }
    }
}

//struct BusStopRow_Previews: PreviewProvider {
//    static var previews: some View {
//        BusStopRow()
//    }
//}
