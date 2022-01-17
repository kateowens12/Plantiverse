//
//  SaveButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/17/22.
//

import SwiftUI

struct SaveButton: View {
    var body: some View {
        Button {
            print("tapped")
        } label: {
            Text("Save")
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 15).foregroundColor(.blue).opacity(0.50))
        .frame(minWidth: 44.0, minHeight: 44.0)
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton()
    }
}
