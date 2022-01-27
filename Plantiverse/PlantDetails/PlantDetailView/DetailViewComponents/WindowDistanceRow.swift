//
//  WindowDistanceRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/19/22.
//

import SwiftUI

struct WindowDistanceRow: View {
    @State var distance: Int?
       
    var inWindow: Bool {
        return distance == 0
    }
    
    var noDistanceProvided: Bool {
        return distance == nil
    }

    var body: some View {
        HStack {
            Text("Distance from Window:")
            
            distance.map { distance in
                Text("\(distance) feet")
            }
            .padding()
            
            if inWindow {
                Text("In Window")
            }
            
            if noDistanceProvided {
                Text("Unspecified")
            }
        }.accessibilityElement(children: .combine)
    }
}

//struct WindowDistanceRow_Previews: PreviewProvider {
//    static var previews: some View {
//        WindowDistanceRow()
//    }
//}
