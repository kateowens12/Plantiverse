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
    @State private var image: Image? = nil
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    PlantImageView(plant: plant, width: geometry.size.width, height: geometry.size.height)
                    Button(action: {
                        self.showingImagePicker = true
                    }) {
                        Image(systemName: "photo")
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Circle().fill(Color.gray).opacity(0.60))
                    }
                    .accessibility(label: Text("Add a new image"))
                    .padding(.bottom)
                    
                    PlantDetailsInfoView(plant: plant)
                        .padding()
                    
                    Spacer()
                    plant.allTasks.map { tasks in
                        TaskList(tasks: tasks)
                            .padding()
                    }
                }
                .navigationTitle(Text(plant.name))
                .accessibilityElement(children: .contain)
                .sheet(isPresented: $showingImagePicker) {
                    // set plant's image to selected image
                } content: {
                    ImagePicker(image: self.$image)
                }
            }
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantFactory().pothos)
    }
}
