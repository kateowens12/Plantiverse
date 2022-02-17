//
//  AddImageButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/27/22.
//

import SwiftUI

struct AddImageButton: View {
    @Binding var showingImagePicker: Bool

    var body: some View {
        Button(action: {
            self.showingImagePicker = true
        }) {
            Image(systemName: "photo")
                .foregroundColor(Color("Deque Black"))
                .padding()
                .background(Circle().fill(Color("Deque Gray")).opacity(0.60))
        }
        .accessibility(label: Text("Add a new image"))
        .padding(.bottom)
        .accessibilitySortPriority(0)
    }
}

struct AddImageButton_Previews: PreviewProvider {
    static var previews: some View {
        AddImageButton(showingImagePicker: .constant(false))
    }
}
