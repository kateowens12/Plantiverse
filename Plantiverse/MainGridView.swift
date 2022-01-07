//
//  MainGridView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct MainGridView: View {
    
    let rooms = RoomFactory().getAllRooms()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HeaderView()
                    Divider()
                    Spacer()
                    ForEach(rooms.indices, id: \.self) { index in
                        Spacer()
                        Spacer()
                        RoomSection(room: rooms[index])
                        Spacer()
                    }
                
                }.padding()
                Spacer()
            }
            .navigationTitle("Plantiverse")
        }
    }
}

struct MainGridView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridView()
    }
}
