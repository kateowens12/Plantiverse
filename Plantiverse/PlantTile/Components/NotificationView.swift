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
                .background(Color.red.opacity(0.9))
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .alignmentGuide(VerticalAlignment.top) {
                    $0[VerticalAlignment.center]
                }
                .alignmentGuide(HorizontalAlignment.trailing) {
                    $0[HorizontalAlignment.trailing] - $0.width * 0.15
                }
        }.frame(minHeight: 44.0)
        .accessibilityLabel("Health update needed")
        .accessibilityAddTraits(.isButton)
        .accessibilityHidden(true)
        .accessibilityElement(children: .contain)
        .accessibilityCustomContent(Text("Health Update"), Text(plant.needsHealthUpdate ? "Health update needed" : "No health update needed"), importance: .high)
        
        .onTapGesture {
            showingAlert = true
        }
        .alert("Update plant health", isPresented: $showingAlert) {
            HealthUpdateAlert(showingAlert: $showingAlert, plant: self.plant)
        } message: {
            Text("Please select \(plant.name)'s current health")
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(plant: PlantFactory().mint)
    }
}
