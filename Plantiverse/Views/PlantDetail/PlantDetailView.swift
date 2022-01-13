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
                    PlantBasicInfoView(plant: plant, width: geometry.size.width, height: geometry.size.height)
                    Button(action: {
                        self.showingImagePicker = true
                    }) {
                        Image(systemName: "photo")
                    }
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Circle().fill(Color.gray).opacity(0.60))
                    .accessibility(label: Text("Add a new plant"))
                    PlantDetailsInfoView(plant: plant)
                        .padding()
                    Spacer()
                    plant.allTasks.map { tasks in
                        TaskList(tasks: tasks)
                            .padding(.leading, 10)
                    }
                }
                .navigationTitle(Text(plant.name))
                .accessibilityElement(children: .contain)
                
                .sheet(isPresented: $showingImagePicker) {
                    // plant.image = Image(uiImage: $image.wrappedValue)
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
