//
//  WindowDistanceSlider.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/20/22.
//

import SwiftUI

struct WindowDistanceSliderView: View {
    @State var value: CGFloat = 0
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Window Distance")
                    .font(.body)
                Spacer()
                Text(value == 0 ? "In window" : "\(Int(value)) ft.")
            }
            CustomSlider(value: $value)
            Spacer()
        }
        .padding(.vertical)
        .padding(.bottom)
        .padding(.bottom)
    Divider()
    }
}

struct WindowDistanceSlider_Previews: PreviewProvider {
    static var previews: some View {
        WindowDistanceSliderView()
    }
}
