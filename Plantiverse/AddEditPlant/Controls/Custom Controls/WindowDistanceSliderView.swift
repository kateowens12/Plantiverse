//
//  WindowDistanceSlider.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/20/22.
//

import SwiftUI

struct WindowDistanceSliderView: View {
    @State var value: CGFloat = 0.0
    var text = "Window Distance"
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Window Distance")
                    .font(.body)
                Spacer()
                Text($value.wrappedValue == 0 ? "In window" : "\(Int($value.wrappedValue)) ft.")
            }
           // .accessibilityElement(children: .ignore)
            CustomSlider(value: $value)
            // ideally, we'd get our a11y label and a11y value from the a11yRepresentation view modifier in the CustomSlider, but setting those as instructed seems to not work and cause a bug!
            // we want voiceover to read this view as 'Window Distance, in window, adjustable ...etc ..
            // this is why we ignore the elements in the hstack - we wouldn't want voiceover to ignore those elements if the a11y representation was working correctly

               // .accessibilityElement(children: .contain)
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
