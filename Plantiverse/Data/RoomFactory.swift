//
//  RoomFactory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class RoomFactory {
    var livingRoom = Room(plants: PlantFactory().getAllPlants(),
                          name: .LivingRoom,
                          id: UUID())
    var bathroom = Room(plants: PlantFactory().getAllPlants(),
                        name: .Bathroom,
                        id: UUID())
    var kitchen = Room(plants: PlantFactory().getAllPlants(),
                       name: .Kitchen,
                       id: UUID())
    var bedroom = Room(plants: PlantFactory().getAllPlants(),
                       name: .Bedroom,
                       id: UUID())
    var diningRoom = Room(plants: PlantFactory().getAllPlants(),
                          name: .DiningRoom,
                          id: UUID())
    var office = Room(plants: PlantFactory().getAllPlants(),
                      name: .Office,
                      id: UUID())
    var outside = Room(plants: PlantFactory().getAllPlants(),
                       name: .Outside,
                       id: UUID())

    func getAllRooms() -> [Room] {
        var rooms: [Room] = []

        rooms.append(livingRoom)
        rooms.append(diningRoom)
        rooms.append(kitchen)
        rooms.append(office)
        rooms.append(bedroom)
        rooms.append(outside)
        rooms.append(bathroom)

        return rooms
    }
}
