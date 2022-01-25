//
//  WindowDistanceSlider.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/20/22.
//

import SwiftUI

struct WindowDistanceSliderView: View {
    @State var value: CGFloat = 0.0
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Window Distance")
                    .font(.body)
                Spacer()
                Text($value.wrappedValue == 0 ? "In window" : "\(Int($value.wrappedValue)) ft.")
            }
            CustomSlider(value: $value)
            Spacer()
        }
        .padding(.vertical)
        .padding(.bottom)
        .padding(.bottom)
        
        .accessibilityElement(children: .combine)
        .accessibilityRepresentation {
            Slider(value: $value, in: 0...10, step: 1.0) {
                Text("Window Distance")
                    .accessibilityValue(Text($value.wrappedValue == 0 ? "In Window" : "\(Int($value.wrappedValue)) ft."))
            }
        }
    }
}

struct WindowDistanceSlider_Previews: PreviewProvider {
    static var previews: some View {
        WindowDistanceSliderView()
    }
}
