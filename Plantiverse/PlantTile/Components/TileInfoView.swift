//
//  PlantInfoView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct TileInfoView: View {
    var plant: PlantModel

    var body: some View {
            Text(plant.name)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
                .fixedSize(horizontal: true, vertical: false)
             //   .accessibility(sortPriority: 2)
      //  .accessibilityElement(children: .combine)
      //  .accessibilityCustomContent("Plant Category", plant.category.rawValue)
    }
}

struct PlantInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TileInfoView(plant: PlantFactory().mint)
    }
}
