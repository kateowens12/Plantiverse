//
//  PlantTaskFactory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class PlantTaskFactory {
    var repot: PlantTask {
        return PlantTask(name: TaskName.Repot, imageName: "house.fill")
    }

    var water: PlantTask {
        return PlantTask(name: TaskName.Water, imageName: "cloud.rain.fill")
    }

    var clean: PlantTask {
        return PlantTask(name: TaskName.Clean, imageName: "trash.fill")
    }
}
