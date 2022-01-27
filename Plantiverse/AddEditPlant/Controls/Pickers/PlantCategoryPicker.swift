//
//  PlantCategoryPicker.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/12/22.
//

import SwiftUI
struct PlantCategoryPicker: View {
    @Binding var selectedCategory: PlantCategory
    
    var body: some View {
        HStack {
            Text("Plant Category")
                .font(.body)
            Spacer()
            Picker("Plant Category", selection: $selectedCategory) {
                ForEach(PlantCategory.allCases) { category in
                    PlantCategoryPickerRow(category: category).tag(category)
                }
            }
        }
        .accessibilityElement(children: .contain)
        .accessibilityElement(children: .combine)
        Divider()
    }
}

struct PlantCategoryPicker_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryPicker(selectedCategory: .constant(.Houseplants))
    }
}


