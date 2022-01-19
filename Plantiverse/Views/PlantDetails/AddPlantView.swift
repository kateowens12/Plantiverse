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
                SaveButton {
                    isAddViewShowing = false
                }
            }
        }

    }
}

//struct AddPlantView_Previews: PreviewProvider {
//    @State var showing = false
//    @Binding var isPresented: Binding<Bool> = projectedValue(projectedValue: $showing.wrappedValue)
//
//    static var previews: some View {
//        AddPlantView(isPresented: $isPresented)
//    }
//}


