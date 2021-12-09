//
//  EditButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct EditButton: View {
    var body: some View {
        Button(action: {
            print("tapped")
        }, label: {
            Image(systemName: "slider.vertical.3")
                .foregroundColor(Color.black)
                .padding()
        }).background(Circle().fill(Color.gray).opacity(0.60))
            .accessibility(label: Text("Edit plants"))
            .accessibilitySortPriority(1)
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}
