//
//  CapsuleView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/2/21.
//

import SwiftUI

struct PlantHealthView: View {
    var status: PlantHealth

    var body: some View {
        Text(status.rawValue)
            .font(.callout)
            .padding()
            .background(.cyan.opacity(0.70))
            .clipShape(Capsule())
            .accessibilityHidden(true)
            .accessibilityElement(children: .contain)
            .accessibilityCustomContent("Plant Health", status.rawValue, importance: .default)
            .accessibilityElement(children: .combine)
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        PlantHealthView(status: PlantHealth.Great)
    }
}
