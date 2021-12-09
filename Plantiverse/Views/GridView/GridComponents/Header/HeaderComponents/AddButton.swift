//
//  AddButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "plus")
                .foregroundColor(Color.black)
                .padding()
        }.background(Circle().fill(Color.gray).opacity(0.60))
            .accessibility(label: Text("Add a new plant"))

    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
