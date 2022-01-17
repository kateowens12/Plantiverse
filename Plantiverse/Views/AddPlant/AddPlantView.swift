//
//  AddPlantView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import SwiftUI

struct AddPlantView: View {
    @State private var plantName: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Basic Info")) {
                        TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                        PlantHealthPicker()
                        PlantCategoryPicker()
                        RepottedToggle()
                        }
                }.navigationBarTitle("Add Plant", displayMode: .inline)
                    .onAppear {
                        UITableView.appearance().backgroundColor = .clear
                    }
                    .onDisappear {
                        UITableView.appearance().backgroundColor = .systemGroupedBackground
                    }
                SaveButton()
            }
        }
    }
}

struct AddPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlantView()
    }
}


