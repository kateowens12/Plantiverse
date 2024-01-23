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
    @State var isEditing: Bool = false
    @State var value: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    PlantImageView(plant: plant, width: geometry.size.width, height: geometry.size.height)
                    AddImageButton(showingImagePicker: $showingImagePicker)
                    
                    Spacer()
                    
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
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditToolbarButton(isEditing: $isEditing, plant: PlantFactory().pothos)
                }
            }.accessibilitySortPriority(2)
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantFactory().pothos)
    }
}
