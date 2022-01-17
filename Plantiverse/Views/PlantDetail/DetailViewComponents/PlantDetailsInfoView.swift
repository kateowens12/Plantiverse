//
//  PlantDetailHeaderView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct PlantDetailsInfoView: View {
    var plant: PlantModel
    @State var potSize: Int?
    @State var distance: Int?
    
    var body: some View {
        VStack {
            HStack {
                CategoryView(category: plant.category)
                    .padding()
                plant.status.map { status in
                    StatusView(status: status)
                }
                .padding()
            }
            
            Divider()
            
            VStack {
                Text("More Details")
                    .font(.headline)
 Spacer()
                plant.distanceFromWindow.map { distance in
                    HStack(alignment: .top) {
                        Text("Distance from Window:")
                        Text("\(distance) feet")
                        Spacer()
                    }
               //     .padding()
                }
                Divider()
                plant.potSize.map { size in
                    HStack(alignment: .top) {
                        Text("Pot size:")
                        Text("\(size) inch")
                        Spacer()
                    }
             //       .padding()
                }
            }
            .accessibilityElement(children: .contain)
        }
    }
}

struct PlantDetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailsInfoView(plant: PlantFactory().aloeVera)
    }
}
