//
//  HeaderView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            FilterButton()
                .frame(minWidth: 44,
                       maxWidth: .infinity,
                       minHeight: 44,
                       maxHeight: .infinity)
                .accessibilitySortPriority(0)
            Text("My Plantiverse")
                .font(.title)
                .fixedSize(horizontal: true, vertical: false)
                .accessibilitySortPriority(2)
            AddButton()
                .frame(minWidth: 44,
                       maxWidth: .infinity,
                       minHeight: 44,
                       maxHeight: .infinity)
                .accessibilitySortPriority(1)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
