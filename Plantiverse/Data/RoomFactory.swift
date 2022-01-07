//
//  RoomFactory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class RoomFactory {
    var livingRoom = Room(plants: [PlantFactory().aloeVera,
                                   PlantFactory().burroTail,
                                   PlantFactory().snakePlant,
                                   PlantFactory().monsteraDelicosa,
                                   PlantFactory().pothos],
                          name: .LivingRoom,
                          id: UUID())
    
    var bathroom = Room(plants: [PlantFactory().philodendron,
                                 PlantFactory().brasilPhilodendron,
                                 PlantFactory().snakePlant],
                        name: .Bathroom,
                        id: UUID())
    
    var bedroom = Room(plants: [PlantFactory().brasilPhilodendron,
                                PlantFactory().miniMonstera,
                                PlantFactory().snakePlant,
                                PlantFactory().pothos,
                                PlantFactory().philodendron],
                       name: .Bedroom,
                       id: UUID())
    
    var diningRoom = Room(plants: [PlantFactory().mint,
                          PlantFactory().parsley,
                          PlantFactory().monsteraDelicosa],
                          name: .DiningRoom,
                          id: UUID())

    func getAllRooms() -> [Room] {
        var rooms: [Room] = []
        rooms.append(livingRoom)
        rooms.append(diningRoom)
        rooms.append(bedroom)
        rooms.append(bathroom)

        return rooms
    }
}
