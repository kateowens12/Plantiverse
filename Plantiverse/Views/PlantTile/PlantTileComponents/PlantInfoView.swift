//
//  PlantInfoView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct PlantInfoView: View {
    var plant: PlantModel

    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: plant.category.getImageName(for: plant.category))
                .accessibility(removeTraits: .isImage)
                .accessibility(label: Text(plant.category.rawValue))
                .accessibilityHidden(true)
            Text(plant.name)
                .padding()
                .accessibility(sortPriority: 2)
        }
        .accessibilityElement(children: .combine)
        .accessibilityCustomContent("Plant Category", plant.category.rawValue)
    }
}

struct PlantInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantInfoView(plant: PlantFactory().mint)
    }
}
