//
//  AddButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct AddButton: View {
    @State var isAddViewShowing: Bool = false
    
    var body: some View {
        Button(action: {
            $isAddViewShowing.wrappedValue.toggle()
        }) {
            Image(systemName: "plus")
                .foregroundColor(Color.black)
                .padding()
        }
        .background(Circle().fill(Color.gray).opacity(0.60))
        .accessibility(label: Text("Add a new plant"))
        .sheet(isPresented: $isAddViewShowing) {
            AddPlantView(isAddViewShowing: self.$isAddViewShowing)
        }
    }
}

//struct AddButton_Previews: PreviewProvider {
//    @Binding 
//    static var previews: some View {
//        AddButton(isAddViewShowing: $showing)
//    }
//}
