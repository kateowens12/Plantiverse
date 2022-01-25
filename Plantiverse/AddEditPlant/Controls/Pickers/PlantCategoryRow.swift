//
//  PlantCategoryRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/13/22.
//

import SwiftUI

struct PlantCategoryRow: View {
    @State var category: PlantCategory

    var body: some View {
        HStack {
            Image(systemName: category.getImageName(for: category))
                .padding()
            Text(category.rawValue).tag(category.id)
        }
        .accessibilityElement(children: .combine)
    }
}

struct PlantCategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryRow(category: .Herbs)
    }
}
