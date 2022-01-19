//
//  PlantCategoryPicker.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/12/22.
//

import SwiftUI
struct PlantCategoryPicker: View {
    @State private var selectedCategory: PlantCategory = .NA

    var body: some View {
        Picker("Plant Category", selection: $selectedCategory) {
            ForEach(PlantCategory.allCases) { category in
                PlantCategoryRow(category: category).tag(category)
            }
        }
    }
}

struct PlantCategoryPicker_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryPicker()
    }
}


