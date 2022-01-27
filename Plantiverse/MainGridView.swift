//
//  MainGridView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct MainGridView: View {
    @Namespace var plantNamespace

    @Binding let rooms = RoomFactory().getAllRooms()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("My Plantiverse")
                        .font(.title)
                        .accessibilitySortPriority(2)
                    // a11y sort priority - use line above for example of what can go wrong - once i removed the line above and had changed the sort code ot be in the new section header view - voiceover would skip 'my plantiverse' until the sort priority modifier was added back in line 20
                    Divider()
                        .padding()
                    ForEach(rooms.indices, id: \.self) { index in 
                        RoomSection(room: rooms[index])
                    }
                    .padding()
                }
                .padding()
            }
            .navigationTitle("Plantiverse")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct MainGridView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridView()
    }
}
