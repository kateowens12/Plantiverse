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
                    plant.image.map { image in
                        plant.image?
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width * 0.90, height: geometry.size.height * 0.30, alignment: .center)
                        }
                    Text(plant.name)
                        .font(.title)
                        .fontWeight(.bold)
            Divider()
            PlantDetailHeaderView(plant: plant)
            Divider()
            Spacer()
            }
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantFactory().pothos)
    }
}

struct PlantDetailHeaderView: View {
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
    }
}
