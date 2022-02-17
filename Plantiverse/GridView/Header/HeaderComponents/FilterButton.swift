//
//  EditButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct FilterButton: View {
    var body: some View {
        Button(action: {
            print("tapped")
        }, label: {
            Image(systemName: "line.3.horizontal.decrease")
                .foregroundColor(Color("Deque Black"))
                .padding()
        })
            .background(Circle().fill(Color("Deque Gray")).opacity(0.60))
            .accessibility(label: Text("Filter plants"))
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton()
    }
}
