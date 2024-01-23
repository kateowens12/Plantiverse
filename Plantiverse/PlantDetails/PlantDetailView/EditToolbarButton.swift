//
//  EditToolbarButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/27/22.
//

import SwiftUI

struct EditToolbarButton: View {
    @Binding var isEditing: Bool
    @State var plant: PlantModel
    @State var value: CGFloat = 0
    
    var body: some View {
        Button {
            isEditing = true
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundColor(.black)
                .frame(minWidth: 45.0, minHeight: 45.0)
            .accessibilityLabel("Edit Plant")
        }
   //     .accessibilitySortPriority(2.0)
        .sheet(isPresented: $isEditing) {
            //   update plant info
        } content: {
            EditPlantView(plant: plant, isEditing: $isEditing, value: $value)
        }
    }
}

struct EditToolbarButton_Previews: PreviewProvider {
    static var previews: some View {
        EditToolbarButton(isEditing: .constant(false), plant: PlantFactory().pothos)
    }
}
