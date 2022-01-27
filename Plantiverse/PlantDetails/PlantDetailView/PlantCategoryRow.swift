//
//  PlantCategoryRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/27/22.
//

import SwiftUI

struct PlantCategoryRow: View {
    var category: PlantCategory

    var body: some View {
        HStack {
            Text("Plant category:")
            Text(category.rawValue.capitalized)
            Image(category.getImageName(for: category)).foregroundColor(.blue)
                .padding()
        }
        .accessibilityElement(children: .combine)
    }
}

struct PlantCategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryRow(category: PlantFactory().pothos.category)
    }
}
