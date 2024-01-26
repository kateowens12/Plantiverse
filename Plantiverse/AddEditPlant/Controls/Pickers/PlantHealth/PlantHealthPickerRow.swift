//
//  PlantHealthPickerRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/26/24.
//

import SwiftUI

struct PlantHealthPickerRow: View {
    @State var plantHealth: PlantHealth
    
    var body: some View {
        HStack {
            Text(plantHealth.rawValue).tag(plantHealth.id)
                .padding()
        }
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    PlantHealthPickerRow(plantHealth: PlantFactory().snakePlant.status ?? PlantHealth.Good)
}
