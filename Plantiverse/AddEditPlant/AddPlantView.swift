//
//  AddPlantView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import SwiftUI

struct AddPlantView: View {
    @State private var plantName: String = ""
    @Binding var isAddViewShowing: Bool
    @State var value: CGFloat = 0
    @State private var selectedHealth: PlantHealth
    @State private var selectedCategory: PlantCategory
    
    var body: some View {
        NavigationView {
                VStack {
                    Text("Add Plant")
                        .font(.title)
                    VStack {
                        TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                        Divider()
<<<<<<< HEAD:Plantiverse/Views/PlantDetails/AddPlantView.swift
                        PlantHealthPicker(selectedHealth: $selectedHealth)
                                PlantCategoryPicker(selectedCategory: $selectedCategory)
                                RepottedToggle()
                        WindowDistanceSliderView(value: value)
                                PotSizeStepper()
=======
                        PlantHealthPicker()
                        PlantCategoryPicker()
                        RepottedToggle()
                        WindowDistanceSliderView(value: value)
                        Divider()
                        PotSizeStepper()
>>>>>>> main:Plantiverse/AddEditPlant/AddPlantView.swift
                    }
                    .padding()
                    .background {
                        Color.gray.opacity(0.50)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                    SaveButton {
                        isAddViewShowing = false
                    }
                    Spacer()
                }
        }
    }
}

struct AddPlantView_Previews: PreviewProvider {
    @State var showing = false
    @Binding var isPresented: Binding<Bool>
    static var previews: some View {
        AddPlantView(isAddViewShowing: .constant(true), value: 0)
    }
}
