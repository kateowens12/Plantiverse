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
        Button(action: {
            showingAlert = true
        }) {
            Image(systemName: "exclamationmark")
                .foregroundColor(Color.black)
                .padding()
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
        .background(Circle().fill(Color.green).opacity(0.70))
        .accessibilityLabel(Text("Update plant health"))
        .accessibilityElement(children: .contain)
        .accessibilityElement(children: .combine)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(plant: PlantFactory().mint)
    }
}
