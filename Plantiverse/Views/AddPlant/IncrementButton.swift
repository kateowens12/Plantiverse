//
//  IncrementButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/12/22.
//

import SwiftUI

struct IncrementButton: View {
    @State var value: Int = 0

    var body: some View {
        Button {
            value += 1
        } label: {
            Image(systemName: "plus.circle.fill")
                .accessibilityLabel("Increment")
        }
    }
}

struct IncrementButton_Previews: PreviewProvider {
    static var previews: some View {
        IncrementButton()
    }
}
