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
            VStack {
                Text(plant.name)
                    .font(.title)
                VStack(alignment: .center, spacing: 12) {
                    // distance from window slider
                    TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                    PotSizeStepper()
                    PlantHealthPicker()
                    PlantCategoryPicker()
                    RepottedToggle()
                }
               // .padding()
              //  .overlay(RoundedRectangle(cornerRadius: 20).background(.gray).opacity(0.10))
             //   .edgesIgnoringSafeArea(.bottom)
                .padding()
                Spacer()
                SaveButton {
                    isEditing = false
                }
            }
        }
    }
}
