//
//  PlantDetailView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/2/21.
//

import SwiftUI

struct PlantDetailView: View {
    var plant: PlantModel
    @State private var showingImagePicker = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
                PlantBasicInfoView(plant: plant)
                Divider()
                PlantDetailsInfoView(plant: plant)
                Divider()
                Spacer()
            }
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantFactory().pothos)
    }
}
