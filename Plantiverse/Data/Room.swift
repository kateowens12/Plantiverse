//
//  Room.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation
import SwiftUI

class Room: ObservableObject, Identifiable {
    @Published var plants: [PlantModel]
    var name: RoomName = RoomName.NA
    var id = UUID()
    
    init(plants: [PlantModel]) {
        self.plants = plants
    }
}

enum RoomName: String {
    case Bedroom = "Bedroom"
    case LivingRoom = "Living Room"
    case Bathroom = "Bathroom"
    case Kitchen = "Kitchen"
    case DiningRoom = "Dining Room"
    case Outside = "Outdoors"
    case Office = "Office"
    case NA = "Unspecified"
}
