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
                    Form {
                        TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                        PotSizeStepper()
                        PlantHealthPicker()
                        PlantCategoryPicker()
                        RepottedToggle()
                    }
                    .onAppear {
                        UITableView.appearance().backgroundColor = .clear
                    }
                    .onDisappear {
                        UITableView.appearance().backgroundColor = .systemGroupedBackground
                    }
                
                    Spacer()
                    SaveButton {
                        isEditing = false
                    }
                    Spacer()
                }
        }
    }
}
