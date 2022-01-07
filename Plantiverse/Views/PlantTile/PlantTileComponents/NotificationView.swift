//
//  NotificationView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct NotificationView: View {
    @State private var showingAlert = false
    var plant: PlantModel

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.clear
            Image(systemName: "exclamationmark")
                .padding()
                .background(Color.green.opacity(0.70))
                .clipShape(Circle())
                .alignmentGuide(.top) {
                    $0[.bottom]
                }
                .alignmentGuide(.trailing) {
                    $0[.trailing] - $0.width * 0.20
                }
        }
        .onTapGesture {
            showingAlert = true
        }

        .alert("Update plant's health", isPresented: $showingAlert) {
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
                           } message: {
                               Text("Please select \(plant.name) plant's current health")
                           }
//        .alert("Update plant's health", isPresented: $showingAlert) {
//            Button("Great") {
//                plant.needsHealthUpdate.toggle()
//            }
//
//            Button("Good") {
//                plant.needsHealthUpdate.toggle()
//            }
//
//            Button("Fair") {
//                plant.needsHealthUpdate = !plant.needsHealthUpdate
//            }
//
//            Button("Yikes!") {
//                plant.needsHealthUpdate.toggle()
//            }
//                } message: {
//                    Text("Please select \(plant.name) plant's current health")
//                }
//        .background(Circle().fill(Color.green).opacity(0.70))
//        .frame(width: 90, height:90, alignment: .center)
//        .accessibilityElement(children: .combine)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(plant: PlantFactory().mint)
    }
}
