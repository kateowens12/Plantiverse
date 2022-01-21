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
                        PlantHealthPicker(selectedHealth: $selectedHealth)
                                PlantCategoryPicker(selectedCategory: $selectedCategory)
                                RepottedToggle()
                        WindowDistanceSliderView(value: value)
                                PotSizeStepper()
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
           // Spacer()
        }
    }
}

struct AddPlantView_Previews: PreviewProvider {
    @State var showing = false
    @Binding var isPresented: Binding<Bool>
    static var previews: some View {
        AddPlantView(isAddViewShowing: .constant(false), value: 0.0)
    }
}
