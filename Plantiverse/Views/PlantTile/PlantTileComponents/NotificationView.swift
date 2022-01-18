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
    //TODO: fix a11y so that needs health update is read if present
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.clear
            Image(systemName: "exclamationmark")
                .padding()
                .background(Color.green.opacity(0.60))
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .alignmentGuide(VerticalAlignment.top) {
                    $0[VerticalAlignment.center]
                }
                .alignmentGuide(HorizontalAlignment.trailing) {
                    $0[HorizontalAlignment.trailing] - $0.width * 0.15
                }
                .accessibilityLabel("Health update needed")
        }
       // .accessibilityElement(children: .contain)
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
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(plant: PlantFactory().mint)
    }
}
