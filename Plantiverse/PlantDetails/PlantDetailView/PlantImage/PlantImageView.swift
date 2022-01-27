//
//  PlantBasicInfoView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct PlantImageView: View {
    var plant: PlantModel
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack(alignment: .center) {
            plant.image.map { image in
                plant.image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width * 0.90, height: height * 0.30, alignment: .center)
                    .background(Color.clear)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.cyan, lineWidth: 4.0))
            }
        }
        .accessibilityLabel(Text("\(plant.name)"))
    }
}

struct PlantBasicInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantImageView(plant: PlantFactory().pothos, width: 40, height: 80)
    }
}
