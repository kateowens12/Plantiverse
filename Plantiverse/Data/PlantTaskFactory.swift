//
//  PlantTaskFactory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class PlantTaskFactory {
    var repot: PlantTask {
        return PlantTask(name: .Repot, imageName: "house.fill")
    }

    var water: PlantTask {
        return PlantTask(name: .Water, imageName: "drop.fill")
    }

    var clean: PlantTask {
        return PlantTask(name: .Clean, imageName: "trash.fill")
    }
}
