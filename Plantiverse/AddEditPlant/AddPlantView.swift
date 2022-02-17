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
    
    var body: some View {
        NavigationView {
                VStack {
                    Text("Add Plant")
                        .font(.title)
                    VStack {
                        TextField("Plant Name", text: $plantName, prompt: Text("Enter plant name"))
                            .frame(minHeight: 44.0)
                        Divider()
                        PlantHealthPicker()
                        PlantCategoryPicker()
                        RepottedToggle()
                        WindowDistanceSliderView(value: value)
                        Divider()
                        PotSizeStepper()
                    }
                    .padding()
                    .background {
                        Color("Deque Gray").opacity(0.50)
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
