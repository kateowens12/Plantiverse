//
//  PlantsGrid.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct PlantsGrid: View {
    @Namespace var plantNamespace
    var room: Room
    var columns: [GridItem] = [
        GridItem(.flexible(minimum: 50.0, maximum: .infinity)),
        GridItem(.flexible(minimum: 50.0, maximum: .infinity))
    ]

    var body: some View {
        let plants = room.plants
        LazyVGrid(columns: columns,
                  alignment: .center,
                  spacing: 12,
                  pinnedViews: .sectionHeaders) {
            ForEach(plants.indices, id: \.self) { i in
                PlantTile(plant: room.plants[i])
                    .accessibilityRotorEntry(id: room.plants[i].id, in: plantNamespace)

            }
        }
                  .accessibilityRotor("Plants with Health Update") {
                      ForEach(plants, id: \.id) { plant in
                          if plant.needsHealthUpdate {
                              AccessibilityRotorEntry("Update plant health", id: plant.id, in: plantNamespace)
                          }
                      }
                  }

                  .accessibilityRotor("Plants with a Task") {
                      ForEach(plants, id: \.id) { plant in
                          if plant.hasTask {
                              AccessibilityRotorEntry("task", id: plant.id, in: plantNamespace)
                          }
                      }
                  }
    }
}

struct PlantsGrid_Previews: PreviewProvider {
    static var previews: some View {
        PlantsGrid(room: RoomFactory().livingRoom)
    }
}
