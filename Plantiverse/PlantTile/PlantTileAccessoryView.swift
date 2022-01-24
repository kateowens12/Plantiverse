//
//  PlantTileAccessoryView.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/24/22.
//

import SwiftUI

struct PlantTileAccessoryView: View {
    var plant: PlantModel
    
    var body: some View {
        VStack {
            HStack {
                plant.task.map({ task in
                    TaskView(plantTask: task)
                })
                
                plant.status.map { status in
                    status == .NeedsUpdate ? nil :
                    PlantHealthView(status: status)
                }
                
                CategoryView(category: plant.category)
            }
        }.fixedSize(horizontal: true, vertical: false)
    }
}

struct PlantTileAccessoryView_Previews: PreviewProvider {
    static var previews: some View {
        PlantTileAccessoryView(plant: PlantFactory().pothos)
    }
}
