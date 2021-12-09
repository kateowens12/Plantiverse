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
                PlantInfoView(plant: plant)
                    .padding()
                plant.task.map({ task in
                    TaskView(plantTask: task)
                })
                    .padding()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.purple).opacity(0.75))

            if plant.needsHealthUpdate {
                NotificationView(plant: plant)
                    .offset(x: 60, y: -80)
            }
        }
        .accessibilityElement(children: .combine)
    }
}

struct PlantTileView_Previews: PreviewProvider {
    static var previews: some View {
        PlantTile(plant: PlantFactory().philodendron)
    }
}
