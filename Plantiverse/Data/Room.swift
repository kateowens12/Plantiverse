//
//  Room.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

struct Room: Identifiable {
    var plants: [PlantModel]
    var name: RoomName
    var id = UUID()
}

enum RoomName: String {
    case Bedroom = "Bedroom"
    case LivingRoom = "Living Room"
    case Bathroom = "Bathroom"
    case Kitchen = "Kitchen"
    case DiningRoom = "Dining Room"
    case Outside = "Outdoors"
    case Office = "Office"
}
