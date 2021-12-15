//
//  PlantDetailView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/2/21.
//

import SwiftUI

struct PlantDetailView: View {
    var plant: PlantModel
    @State private var showingImagePicker = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
                PlantBasicInfoView(plant: plant, width: geometry.size.width, height: geometry.size.height)
                PlantDetailsInfoView(plant: plant)
                    .padding()
                Spacer()
                plant.allTasks.map { tasks in
                    TaskList(tasks: tasks)
                }
            }
            .accessibilityElement(children: .contain)
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantFactory().pothos)
    }
}
