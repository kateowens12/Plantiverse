//
//  SaveButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/17/22.
//

import SwiftUI

struct SaveButton: View {
    @State private var isAddViewShowing: Bool = true
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text("Save")
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 15).foregroundColor(.blue).opacity(0.40))
        .frame(minWidth: 44.0, minHeight: 44.0)
    }
}

//struct SaveButton_Previews: PreviewProvider {
//    @State var isShowing = false
//
//    static var previews: some View {
//        SaveButton(isPresented: $isShowing)
//    }
//}
