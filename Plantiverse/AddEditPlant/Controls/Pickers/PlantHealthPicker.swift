//
//  PlantHealthPicker.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/12/22.
//

import SwiftUI

struct PlantHealthPicker: View {
    @State private var selectedHealth: PlantHealth = .NA

    var body: some View {
        HStack {
            Text("Plant Health")
            Spacer()
            Picker("Plant Health", selection: $selectedHealth) {
                ForEach(PlantHealth.allCases) { health in
                    Text(health.rawValue).tag(health)
                }
            }
        }
        .accessibilityElement(children: .combine)
        Divider()
    }
}

struct PlantHealthPicker_Previews: PreviewProvider {
    static var previews: some View {
        PlantHealthPicker()
    }
}
