//
//  DecrementButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/12/22.
//

import SwiftUI

struct DecrementButton: View {
    @State var value: Int = 0

    var body: some View {
        Button {
            value -= 1
        } label: {
            Image(systemName: "minus.circle.fill")
            .accessibilityLabel("Decrement")
        }
    }
}

struct DecrementButton_Previews: PreviewProvider {
    static var previews: some View {
        DecrementButton()
    }
}
