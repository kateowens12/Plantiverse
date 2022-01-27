//
//  WindowDistanceSlider.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/20/22.
//

import SwiftUI

struct WindowDistanceSliderView: View {
    @State var value: CGFloat = 0.0
    @State var isEditing: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Window Distance")
                    .font(.body)
                Spacer()
                Text($value.wrappedValue < 1 ? "In window" : "\(Int($value.wrappedValue)) ft.")
                    .font(.body)
                    .accessibilityHidden(true)
            }
            .accessibilityElement(children: .combine)
            
            CustomSlider(value: $value)
                .accessibilityRepresentation {
                    Slider(value: $value, in: 0...12, step: 1.0)
                }
                .accessibilityValue($value.wrappedValue < 1 ? "In Window" : "\(Int($value.wrappedValue)) ft")
            Spacer()
        }
        .padding(.vertical)
        .padding(.bottom)
        .padding(.bottom)
        .accessibilityElement(children: .combine)
    }
}

struct WindowDistanceSlider_Previews: PreviewProvider {
    static var previews: some View {
        WindowDistanceSliderView()
    }
}
