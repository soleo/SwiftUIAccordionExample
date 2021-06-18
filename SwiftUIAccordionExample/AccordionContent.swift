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
        Text(busInfo.stopDetails)
    }
}

//struct AccordionContent_Previews: PreviewProvider {
//    static var previews: some View {
//        AccordionContent()
//    }
//}
