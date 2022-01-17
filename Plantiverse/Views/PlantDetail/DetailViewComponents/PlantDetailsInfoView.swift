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
            VStack(alignment: .leading) {
                Text("Plant Details")
                    .font(.title2)
                HStack {
                    CategoryView(category: plant.category)
                    plant.status.map { status in
                        StatusView(status: status)
                        
                    }
                }.padding()
                Divider()
                
                plant.distanceFromWindow.map { distance in
                    HStack {
                        Text("Distance from Window:")
                        Text(plant.distanceFromWindow == 0 ? "In window" : "\(distance) feet")
                        Spacer()
                    }
                }
                
                Divider()
                
                plant.potSize.map { size in
                    HStack {
                        Text("Pot size:")
                        Text(plant.potSize == 0 ? "Not specified" : "\(size) inch")
                        Spacer()
                    }
                }
                
                Divider()
                
                    HStack {
                        Text("Has this plant been repotted?")
                        Text(plant.hasBeenRepotted ? "Yes" : "No")
                    }
                
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
