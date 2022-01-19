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
                            .padding()
                        Divider()
                        PotSizeStepper()
                        Divider()
                        PlantHealthPicker()
                        Divider()
                        PlantCategoryPicker()
                        Divider()
                        RepottedToggle()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20.0).fill(Color.gray).opacity(0.20))
                    .padding()

// make gray overlay situation where picker still works with it
                    Spacer()
                    SaveButton {
                        isEditing = false
                    }
                }
            
        }
    }
}
