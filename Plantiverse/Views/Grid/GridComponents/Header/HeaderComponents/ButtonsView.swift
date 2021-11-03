//
//  ButtonsView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        HStack {
            EditButton()
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity)
                .offset(x: -50, y: 50)
            AddButton()
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity)
                .offset(x: 50, y: 50)
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
