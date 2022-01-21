//
//  PlantFactory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation
import SwiftUI

class PlantFactory {

    var pothos = PlantModel(name: "Pothos", needsHealthUpdate: false, task: PlantTaskFactory().clean, category: PlantCategory.Houseplants, status: <#T##PlantHealth?#>, image: <#T##Image?#>, distanceFromWindow: <#T##Int?#>, potSize: <#T##Int?#>, hasBeenRepotted: <#T##Bool#>, room: <#T##Room#>)
    
    PlantModel(name: ,
                            needsHealthUpdate: false,
                            task: ,
                            category: ,
                            status: PlantHealth.NeedsUpdate,
                            image: Image("pothos"),
                            distanceFromWindow: 2,
                            potSize: 6)

    var brasilPhilodendron = PlantModel(name: "Brasil Philodendron",
                                        needsHealthUpdate: false,
                                        task: PlantTaskFactory().water,
                                        category: PlantCategory.Houseplants,
                                        image: Image("brasilPhilodendron"),
                                        distanceFromWindow: 2,
                                        potSize: 6)

    var aloeVera = PlantModel(name: "Aloe Vera",
                              needsHealthUpdate: false,
                              category: PlantCategory.Succulents,
                              status: PlantHealth.Good,
                              image: Image("aloeVera"),
                              distanceFromWindow: 2,
                              potSize: 6)

    var philodendron = PlantModel(name: "Philodendron",
                                  needsHealthUpdate: true,
                                  task: PlantTaskFactory().repot,
                                  category: PlantCategory.Houseplants,
                                  image: Image("philodendron"),
                                  distanceFromWindow: 1,
                                  potSize: 8)

    var burroTail = PlantModel(name: "Burro Tail",
                               needsHealthUpdate: false,
                               task: PlantTask.TaskName.NA,
                               category: PlantCategory.Succulents,
                               status: PlantHealth.Good,
                               image: Image("burroTail"))

    var mint = PlantModel(name: "Mint",
                          needsHealthUpdate: true,
                          task: PlantTaskFactory().water,
                          category: PlantCategory.Herbs,
                          image: Image("mint"),
                          distanceFromWindow: 0,
                          potSize: 4)

    var miniMonstera = PlantModel(name: "Mini Monstera",
                                  needsHealthUpdate: false,
                                  task: PlantTaskFactory().clean,
                                  category: PlantCategory.Houseplants,
                                  image: Image("miniMonstera"))

    var monsteraDelicosa = PlantModel(name: "Monstera Delicosa",
                                      needsHealthUpdate: false,
                                      task: PlantTaskFactory().repot,
                                      category: PlantCategory.Houseplants,
                                      status: PlantHealth.Great,
                                      image: Image("monsteraDelicosa"))

    var snakePlant = PlantModel(name: "Snake Plant",
                                needsHealthUpdate: true,
                                task: PlantTaskFactory().repot,
                                category: PlantCategory.Succulents,
                                image: Image("snakePlant"))

    var parsley = PlantModel(name: "Parsley",
                             needsHealthUpdate: false,
                             task: PlantTaskFactory().water,
                             category: PlantCategory.Herbs,
                             status: PlantHealth.Meh,
                             image: Image("parsley"))

    func getAllPlants() -> [PlantModel] {
        var plants: [PlantModel] = []
        plants.append(mint)
        plants.append(pothos)
        plants.append(brasilPhilodendron)
        plants.append(philodendron)
        plants.append(aloeVera)
        plants.append(burroTail)
        plants.append(parsley)
        plants.append(miniMonstera)
        plants.append(monsteraDelicosa)
        plants.append(snakePlant)

        return plants
    }
}
