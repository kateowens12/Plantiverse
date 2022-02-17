//
//  MainGridView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct MainGridView: View {
    @Namespace var plantNamespace

    let rooms = RoomFactory().getAllRooms()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("My Plantiverse")
                        .font(.title)
                    Divider()
                        .padding()
                    ForEach(rooms.indices, id: \.self) { index in 
                        RoomSection(room: rooms[index])
                    }.padding()
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
