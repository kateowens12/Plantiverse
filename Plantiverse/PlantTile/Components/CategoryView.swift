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
        HStack {
            Image(systemName: category.getImageName(for: category))
                .imageScale(.small)
                .padding(.leading)
            Text(category.rawValue)
                .foregroundColor(Color("Deque Black"))
                .font(.callout)
                .padding(.top)
                .padding(.trailing)
                .padding(.bottom)
        }
        .background(Color("Deque Green").opacity(0.95))
        .clipShape(Capsule())
        .fixedSize(horizontal: true, vertical: false)
        .accessibilityHidden(true)
        .accessibilityElement(children: .contain)
        .accessibilityCustomContent("Plant Category", category.rawValue, importance: .default)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: PlantCategory.Houseplants)
    }
}
