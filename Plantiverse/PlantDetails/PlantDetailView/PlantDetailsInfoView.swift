//
//  PlantDetailHeaderView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct PlantDetailsInfoView: View {
    var plant: PlantModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Plant Details")
                .font(.title2)
                .padding()
            PlantCategoryRow(category: plant.category)
                Divider()
                plant.status.map { status in
                    HStack {
                        Text("Plant Health:")
                        Text(status.rawValue)
                            .padding()
                    }.accessibilityElement(children: .combine)
                }
            Divider()
            WindowDistanceRow(distance: plant.distanceFromWindow)
            Divider()
            PotSizeRow(potSize: plant.potSize)
            Divider()
            RepottedToggleRow(isRepotted: plant.hasBeenRepotted)
        }
        .padding(.leading)
       // .accessibilityElement(children: .contain)
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 20).background(.gray).opacity(0.10))
    }
}

struct PlantDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailsInfoView(plant: PlantFactory().aloeVera)
    }
}



