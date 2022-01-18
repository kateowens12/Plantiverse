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
    var noPotSize: Bool {
        return plant.potSize == 0 || plant.potSize == nil
    }
    
    var inWindow: Bool {
        return plant.distanceFromWindow == 0
    }
    
    var noDistanceProvided: Bool {
        return plant.distanceFromWindow == nil
    }
    
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
            
            HStack {
                Text("Distance from Window:")
                
                plant.distanceFromWindow.map { distance in
                    Text("\(distance) feet")
                }
                
                if inWindow {
                    Text("In Window")
                }
                
                if noDistanceProvided {
                    Text("Unspecified")
                }
                Spacer()
            }
            Divider()
            
            HStack {
                Text("Pot size:")
                
                plant.potSize.map { size in
                    Text("\(size) inch")
                }
                
                if noPotSize {
                    Text("Unspecified")
                }
                Spacer()
            }
            
            Divider()
            
            HStack {
                Text("Has this plant been repotted?")
                Text(plant.hasBeenRepotted ? "Yes" : "No")
                Spacer()
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
