//
//  PlantCategoryPicker.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import SwiftUI

struct PlantCategoryPicker: View {
    var body: some View {
        Picker("Plant Category", selection: $selectedCategory) {
            // TODO: add icon next to text
            Text("Houseplant").tag(PlantCategory.Houseplants)
            Text("Herb").tag(PlantCategory.Herbs)
            Text("Succulents").tag(PlantCategory.Succulents)
            Text("Not Specified").tag(PlantCategory.NA)
        }
    }
}

struct PlantCategoryPicker_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryPicker()
    }
}
