//
//  RepottedToggleRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/19/22.
//

import SwiftUI

struct RepottedToggleRow: View {
    @State var isRepotted: Bool = false
    var body: some View {
        HStack {
            Text("Has this plant been repotted?")
            Text(isRepotted ? "Yes" : "No")
            Spacer()
        }
    }
}

struct RepottedToggleRow_Previews: PreviewProvider {
    static var previews: some View {
        RepottedToggleRow()
    }
}
