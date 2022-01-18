//
//  EditPlantView.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/18/22.
//

import SwiftUI

struct EditPlantView: View {
    var plant: PlantModel
    @State private var plantName: String = ""
    @Binding var isEditing: Bool

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text(plant.name)
                    .font(.title)
               // Spacer()
                // distance from window slider
                TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                    .padding()
                PotSizeStepper()
                    .padding()
                Divider()
                    .padding()
                PlantHealthPicker()
                    .padding()
                Divider()
                PlantCategoryPicker()
                    .padding()
                
                RepottedToggle()
                    .padding()
                Spacer()
                SaveButton {
                    isEditing = false
                }
            }
        }
    }
}

//struct EditPlantView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditPlantView(plant: PlantFactory().pothos, isEditing: <#Binding<Bool>#>)
//    }
//}
