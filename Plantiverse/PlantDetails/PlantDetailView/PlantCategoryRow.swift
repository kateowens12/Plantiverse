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
            HStack {
                Text(category.rawValue.capitalized)
                Image(systemName: category.getImageName(for: category))
                    .imageScale(.small)
                    .accessibilityHidden(true)
            }
            
                .padding()
        }
        .accessibilityElement(children: .combine)
    }
}

struct PlantCategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryRow(category: PlantFactory().aloeVera.category)
    }
}
