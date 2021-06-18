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
            Text(busInfo.stopName)
            Spacer()
            if (isExpanded) {
                Image(systemName: "chevron.up")
                   
            } else {
                Image(systemName: "chevron.down")
                   
            }
        }
        
    }
}

//struct AccordionHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        AccordionHeader()
//    }
//}
