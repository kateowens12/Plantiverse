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
            HStack {
                CategoryView(category: plant.category)
                plant.status.map { status in
                    StatusView(status: status)
                }
            }
            .padding()
            
            Divider()
            WindowDistanceRow(distance: plant.distanceFromWindow)
            Divider()
            PotSizeRow(potSize: plant.potSize)
            Divider()
            RepottedToggleRow(isRepotted: plant.hasBeenRepotted)
        }
        .padding(.leading)
        .accessibilityElement(children: .contain)
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 20).background(.gray).opacity(0.10)).edgesIgnoringSafeArea(.bottom)
    }
}

struct PlantDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailsInfoView(plant: PlantFactory().aloeVera)
    }
}

