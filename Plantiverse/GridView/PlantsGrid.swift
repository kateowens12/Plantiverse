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
        GridItem(.flexible())
    ]
    
    var body: some View {
        let plants = room.plants
        LazyVGrid(columns: columns,
                  alignment: .center,
                  spacing: 16,
                  pinnedViews: .sectionHeaders) {
            ForEach(plants.indices, id: \.self) { i in
                NavigationLink(destination: PlantDetailView(plant: room.plants[i])) {
                    PlantTile(plant: room.plants[i])
                       .accessibilityRotorEntry(id: room.plants[i].id, in: plantNamespace)
                }.buttonStyle(PlainButtonStyle())
            }
        }
                  .accessibilityElement(children: .contain)
                  .accessibilityRotor("Plants with Health Update Due") {
                      ForEach(plants, id: \.id) { plant in
                          if plant.needsHealthUpdate {
                              AccessibilityRotorEntry("Update plant health", id: plant.id, in: plantNamespace)
                          }
                      }
                  }
        
                  .accessibilityRotor("Plants with task due") {
                      ForEach(plants, id: \.id) { plant in
                          if plant.hasTask {
                              AccessibilityRotorEntry("task due", id: plant.id, in: plantNamespace)
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
