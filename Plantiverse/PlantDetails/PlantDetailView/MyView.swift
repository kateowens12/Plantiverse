//
//  samples.swift
//  Plantiverse
//
//  Created by Kate Owens on 2/16/22.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        Image(systemName: "gearshape.fill")
            .accessibilityLabel("Edit Plant")
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
