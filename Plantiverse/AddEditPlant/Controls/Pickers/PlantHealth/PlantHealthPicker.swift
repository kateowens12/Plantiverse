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
                .font(.body)
                .accessibilityElement(children: .ignore)
            Spacer()
            Picker("Plant Health", selection: $selectedHealth) {
                ForEach(PlantHealth.allCases) { health in
                    PlantHealthPickerRow(plantHealth: health).tag(health)
                }
            }
        }

        .accessibilityElement(children: .contain)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("Plant Health")
        .accessibilityValue($selectedHealth.wrappedValue.rawValue)
        .accessibilityAddTraits(.isButton)
        Divider()
    }
}

struct PlantHealthPicker_Previews: PreviewProvider {
    static var previews: some View {
        PlantHealthPicker()
    }
}
