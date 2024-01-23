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
                .foregroundColor(Color("Deque Black"))
                .padding()
        }
        .background(Circle().fill(Color("Deque Gray")).opacity(0.55))
        .accessibility(label: Text("Add a plant"))
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
