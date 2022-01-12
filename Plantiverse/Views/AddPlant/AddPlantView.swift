//
//  AddPlantView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import SwiftUI

struct AddPlantView: View {
    @State private var text: String = ""
    @State private var isShowing: Bool = false
    
    var body: some View {
        Form {
            Section(header: Text("Basic Info")) {
                VStack {
                    TextField("Plant Name", text: $text, prompt: Text("Enter plant name"))
                Divider()
                PlantHealthPicker()
                    }
                }
            Section(header: Text("Detailed Info")) {
                VStack {
                    PotSizeStepper()
                    Divider()
                    PlantCategoryPicker()
                }
            }
        }
    }
}
    struct AddPlantView_Previews: PreviewProvider {
        static var previews: some View {
            AddPlantView()
        }
    }
