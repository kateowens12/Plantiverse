//
//  PlantHealthPicker.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import SwiftUI

struct PlantHealthPicker: View {
    var body: some View {
        Picker("Plant Health", selection: $selectedHealth) {
            Text("Excellent").tag(PlantHealth.Excellent)
            Text("Good").tag(PlantHealth.Good)
            Text("Meh").tag(PlantHealth.Meh)
            Text("Bad").tag(PlantHealth.Bad)
            Text("Unspecified").tag(PlantHealth.NA)
            Text("Needs Update").tag(PlantHealth.NeedsUpdate)
        }
    }
}

struct PlantHealthPicker_Previews: PreviewProvider {
    static var previews: some View {
        PlantHealthPicker()
    }
}
