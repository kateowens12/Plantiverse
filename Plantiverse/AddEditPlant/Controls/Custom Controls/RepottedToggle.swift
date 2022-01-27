//
//  RepottedToggle.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/13/22.
//

import SwiftUI

struct RepottedToggle: View {
    @State private var isRepotted: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Plant is repotted")
                Spacer()
                Image(systemName: $isRepotted.wrappedValue ? "checkmark.circle" : "circle")
                    .imageScale(.large)
                    .frame(minWidth: 44.0, minHeight: 44.0)
            }
            .onTapGesture {
                $isRepotted.wrappedValue.toggle()
            }
            .accessibilityRepresentation(representation: {
                Toggle(isOn: $isRepotted) {
                    Text("Plant is repotted")
                }
            })
        }
        .accessibilityElement(children: .combine)
        Divider()
    }
}

struct RepottedToggle_Previews: PreviewProvider {
    static var previews: some View {
        RepottedToggle()
    }
}
