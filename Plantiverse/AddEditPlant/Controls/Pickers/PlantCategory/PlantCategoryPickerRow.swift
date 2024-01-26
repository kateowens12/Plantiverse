//
//  PlantCategoryPickerRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/13/22.
//

import SwiftUI

struct PlantCategoryPickerRow: View {
    @State var category: PlantCategory

    var body: some View {
        HStack {
            Image(systemName: category.getImageName(for: category))
                .accessibilityHidden(true)
                .padding()
            Text(category.rawValue).tag(category.id)
        }
        .accessibilityElement(children: .combine)
    }
}

struct PlantCategoryPickerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryRow(category: PlantFactory().pothos.category)
    }
}
