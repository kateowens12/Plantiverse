//
//  HeaderView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct HeaderView: View {
    var room: Room
    
    var body: some View {
        HStack {
            FilterButton()
                .frame(minWidth: 44,
                       maxWidth: .infinity,
                       minHeight: 44,
                       maxHeight: .infinity)
            Text(room.name.rawValue)
                .font(.title2)
                .accessibilitySortPriority(2)
            AddButton()
                .frame(minWidth: 44,
                       maxWidth: .infinity,
                       minHeight: 44,
                       maxHeight: .infinity)
                .accessibilitySortPriority(1)
        }
        .fixedSize(horizontal: true, vertical: false)
        .accessibilityElement(children: .contain)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(room: RoomFactory().bedroom)
    }
}
