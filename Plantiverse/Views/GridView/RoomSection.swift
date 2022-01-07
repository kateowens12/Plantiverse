//
//  RoomSectionView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct RoomSection: View {
    var room: Room
    
    var body: some View {
        Spacer()
        Section(header: Text(room.name.rawValue).font(.title2))
        {
            Spacer()
            PlantsGrid(room: room)
                .padding()
        }
    }
}

struct RoomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RoomSection(room: RoomFactory().livingRoom)
    }
}
