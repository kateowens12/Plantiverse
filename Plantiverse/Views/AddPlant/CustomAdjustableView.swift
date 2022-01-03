//
//  CustomAdjustableView.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/3/22.
//

import SwiftUI

struct CustomAdjustableView: View {
    @State var value: Int = 0
    var body: some View {
        VStack {
            Text("\($value.wrappedValue) inches")
            HStack {
                Image(systemName: "plus")
                    Spacer()
                Image(systemName: "minus")
            }
        }
    }
}

struct CustomAdjustableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAdjustableView()
    }
}
