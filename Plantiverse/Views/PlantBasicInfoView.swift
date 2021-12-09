//
//  PlantBasicInfoView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct PlantBasicInfoView: View {
    var plant: PlantModel
    var body: some View {
        GeometryReader { geometry in
            VStack {
                plant.image.map { image in
                    plant.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width * 0.90, height: geometry.size.height * 0.30, alignment: .center)
                }
                Text(plant.name)
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
}

struct PlantBasicInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantBasicInfoView(plant: PlantFactory().pothos)
    }
}
