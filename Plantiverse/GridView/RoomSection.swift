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
        Section {
            PlantsGrid(room: room)
        } header: {
            HeaderView(room: room)
        }
        Divider()
    }
}

struct RoomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RoomSection(room: RoomFactory().livingRoom)
    }
}
