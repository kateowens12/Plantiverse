//
//  MainGridView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct MainGridView: View {
    @Environment(\.isSearching)
    private var isSearching: Bool

    @Environment(\.dismissSearch)
    private var dismissSearch

    @State private var query: String = ""
    let rooms = RoomFactory().getAllRooms()
    let suggestions: [String] = ["pothos", "snake plant"]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HeaderView()
                    Divider()
                    ForEach(rooms.indices, id: \.self) { index in
                        RoomSection(room: rooms[index])
                    }
                }.padding()
            }
            .navigationTitle("Plantiverse")
        }
        .searchable(text: $query,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "Search Plants") {
            ForEach(suggestions, id: \.self) { suggestion in
                Text(suggestion)
                    .searchCompletion(suggestion)
            }
        }
        .onChange(of: query) { newQuery in

        }

    }

}

struct MainGridView_Previews: PreviewProvider {
    static var previews: some View {
        MainGridView()
    }
}
