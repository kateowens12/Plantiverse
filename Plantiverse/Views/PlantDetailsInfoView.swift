//
//  PlantDetailHeaderView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct PlantDetailsInfoView: View {
    var plant: PlantModel

    var body: some View {

        HStack {
            CategoryView(category: plant.category)
            plant.status.map { status in
                StatusView(status: status)
            }
            .padding()
            plant.task.map { task in
                TaskView(plantTask: task)
            }
        }
        .accessibilityElement(children: .contain)
        .padding()
        Spacer()
    }
}

struct PlantDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailsInfoView(plant: PlantFactory().pothos)
    }
}
