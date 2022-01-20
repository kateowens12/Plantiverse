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
       // VStack(spacing: 4) {
            Text(plant.name)
                .font(.body)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .fixedSize(horizontal: false, vertical: true)
                .accessibility(sortPriority: 2)
       // }
      //  .accessibilityElement(children: .combine)
      //  .accessibilityCustomContent("Plant Category", plant.category.rawValue)
    }
}

struct PlantInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TileInfoView(plant: PlantFactory().mint)
    }
}
