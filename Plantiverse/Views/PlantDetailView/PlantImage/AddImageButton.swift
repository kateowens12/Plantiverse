//
//  AddImageButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/13/22.
//

import SwiftUI

struct AddImageButton: View {
    @State private var showingImagePicker = false

    var body: some View {
        Button(action: {
            self.showingImagePicker = true
        }) {
            Image(systemName: "photo")
        }
        .foregroundColor(Color.black)
        .padding()
        .background(Circle().fill(Color.gray).opacity(0.60))
        .accessibility(label: Text("Add a new plant"))
    }
}

struct AddImageButton_Previews: PreviewProvider {
    static var previews: some View {
        AddImageButton()
    }
}
