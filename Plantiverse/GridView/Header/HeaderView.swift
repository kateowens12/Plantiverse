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
                    .padding()
                    .frame(minWidth: 44,
                           maxWidth: .infinity,
                           minHeight: 44,
                           maxHeight: .infinity)
                Text(room.name.rawValue)
                    .font(.title2)
                    .fontWeight(.regular)
                AddButton()
                    .padding()
                    .frame(minWidth: 44,
                           maxWidth: .infinity,
                           minHeight: 44,
                           maxHeight: .infinity)
            }
                .fixedSize(horizontal: true, vertical: false)
                .padding()
                .background {
                    Color.indigo.opacity(0.50)
                        .clipShape(Capsule())
                }
                .accessibilityElement(children: .combine)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(room: RoomFactory().bedroom)
    }
}
