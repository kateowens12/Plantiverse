//
//  CategoryView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/2/21.
//

import SwiftUI

struct CategoryView: View {
    var category: PlantCategory

    var body: some View {
        Text(category.rawValue)
            .font(.footnote)
            .padding()
            .background(.green.opacity(0.90))
            .clipShape(Capsule())
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: PlantCategory.Houseplants)
    }
}
