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
    @State private var image = UIImage()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                PlantBasicInfoView(plant: plant, width: geometry.size.width, height: geometry.size.height)
                Button(action: { self.showingImagePicker = true }) {
                              Text("ADD PHOTO")
                          }
                PlantDetailsInfoView(plant: plant)
                    .padding()
                Spacer()
                plant.allTasks.map { tasks in
                    TaskList(tasks: tasks)
                }
            }
            .navigationTitle(Text(plant.name))
            .accessibilityElement(children: .contain)
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
            }
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantFactory().pothos)
    }
}
