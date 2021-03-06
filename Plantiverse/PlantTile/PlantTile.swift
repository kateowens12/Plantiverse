//
//  PlantTileView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct PlantTile: View {
    var plant: PlantModel

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                TileInfoView(plant: plant)
                PlantTileAccessoryView(plant: plant)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.purple).opacity(0.80))
            .overlay(plant.needsHealthUpdate ? NotificationView(plant: plant) : nil) 
        }
        .accessibilityElement(children: .contain)
        .accessibilityElement(children: .combine)
    }
}

struct PlantTileView_Previews: PreviewProvider {
    static var previews: some View {
        PlantTile(plant: PlantFactory().snakePlant)
    }
}
