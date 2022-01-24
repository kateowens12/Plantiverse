//
//  HealthUpdateAlert.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/24/22.
//

import SwiftUI

struct HealthUpdateAlert: View {
    @Binding var showingAlert: Bool
    var plant: PlantModel
    
    var body: some View {
        VStack {
            Button("Great") {
                plant.needsHealthUpdate.toggle()
            }
            
            Button("Good") {
                plant.needsHealthUpdate.toggle()
            }
            
            Button("Fair") {
                plant.needsHealthUpdate = !plant.needsHealthUpdate
            }
            
            Button("Yikes!") {
                plant.needsHealthUpdate.toggle()
            }
            
            Button("Cancel") {
                $showingAlert.wrappedValue.toggle()
            }
        }
    }
}

//struct HealthUpdateAlert_Previews: PreviewProvider {
//    static var previews: some View {
//        HealthUpdateAlert(showingAlert: .constant(false), plant: PlantFactory().pothos)
//    }
//}
