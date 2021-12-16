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
        VStack {
            Divider()
            HStack {
                CategoryView(category: plant.category)
                    .padding()
                plant.status.map { status in
                    StatusView(status: status)
                }
                .padding()
                plant.task.map { task in
                    TaskView(plantTask: task)
                }
                .padding()
            }
            Divider()
            .accessibilityElement(children: .contain)
        }
    }
}

struct PlantDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailsInfoView(plant: PlantFactory().aloeVera)
    }
}
