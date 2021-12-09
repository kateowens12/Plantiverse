//
//  CapsuleView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/2/21.
//

import SwiftUI

struct StatusView: View {
    var status: Status

    var body: some View {
        Text(status.rawValue)
            .font(.footnote)
            .padding()
            .background(.cyan.opacity(0.80))
            .clipShape(Capsule())
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView(status: Status.VeryGood)
    }
}
