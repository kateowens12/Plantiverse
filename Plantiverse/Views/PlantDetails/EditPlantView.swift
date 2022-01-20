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
    @Binding var value: CGFloat
    
    var body: some View {
        NavigationView {
            VStack {
                Text(plant.name)
                    .font(.title)
                VStack {
                    TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                    Divider()
                    PlantHealthPicker()
                    PlantCategoryPicker()
                    RepottedToggle()
                    WindowDistanceSliderView(value: value)
                    PotSizeStepper()
                }
                .padding()
                .background {
                    Color.gray.opacity(0.40)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
                
                SaveButton {
                    isEditing = false
                }
            }
        }
    }
}

struct Previews_EditPlantView_Previews: PreviewProvider {
    @State private var plantName: String = ""
    @Binding var isEditing: Bool
    @Binding var value: CGFloat
    static var previews: some View {
        EditPlantView(plant: PlantFactory().pothos, isEditing: .constant(false), value: .constant(0.0))
    }
}
