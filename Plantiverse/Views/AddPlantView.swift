//
//  AddPlantView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import SwiftUI

struct AddPlantView: View {
    @State private var text: String = ""
    @State private var selectedCategory: PlantCategory = .NA
    @State private var selectedHealth: PlantHealth = .NA
    @State private var isShowing: Bool = false
    
    var body: some View {
        Form {
            Section(header: Text("Plant Info")) {
                VStack {
                    TextField("Plant Name", text: $text, prompt: Text("Enter plant name"))
                    Divider()
                    Picker("Plant Category", selection: $selectedCategory) {
                        // TODO: add icon next to text
                        Text("Houseplant").tag(PlantCategory.Houseplants)
                        Text("Herb").tag(PlantCategory.Herbs)
                        Text("Succulents").tag(PlantCategory.Succulents)
                        Text("Not Specified").tag(PlantCategory.NA)
                    }
                    Picker("Plant Health", selection: $selectedHealth) {
                        Text("Excellent").tag(PlantHealth.Excellent)
                        Text("Good").tag(PlantHealth.Good)
                        Text("Meh").tag(PlantHealth.Meh)
                        Text("Bad").tag(PlantHealth.Bad)
                        Text("Unspecified").tag(PlantHealth.NA)
                        Text("Needs Update").tag(PlantHealth.NeedsUpdate)
                    }
                    // slider or stepper for pot size
                }
                
//                Button {
//                    isShowing.toggle()
//                } label: {
//                    Text("Done")
//                }
            }
        }
    }
}
    struct AddPlantView_Previews: PreviewProvider {
        static var previews: some View {
            AddPlantView()
        }
    }
