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
            .font(.footnote)
            .padding()
            .background(.cyan.opacity(0.80))
            .clipShape(Capsule())
        //     .accessibilityHidden(true)
           //  .accessibilityElement(children: .contain)
             .accessibilityElement(children: .combine)
          //  .accessibilityCustomContent("Plant Health", status.rawValue, importance: .default)
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        PlantHealthView(status: PlantHealth.Great)
    }
}
