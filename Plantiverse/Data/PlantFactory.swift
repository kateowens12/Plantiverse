//
//  PlantFactory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class PlantFactory {

    var pothos = PlantModel(name: "Pothos",
                            needsHealthUpdate: true,
                            task: PlantTaskFactory().clean,
                            category: PlantCategory.Houseplants)

    var brasilPhilodendron = PlantModel(name: "Brasil Philodendron",
                                        needsHealthUpdate: false,
                                        task: PlantTaskFactory().water,
                                        category: PlantCategory.Houseplants)

    var aloeVera = PlantModel(name: "Aloe Vera",
                              needsHealthUpdate: false,
                              task: nil,
                              category: PlantCategory.Succulents)

    var philodendron = PlantModel(name: "Philodendron",
                                  needsHealthUpdate: true,
                                  task: PlantTaskFactory().repot,
                                  category: PlantCategory.Houseplants)

    var burroTail = PlantModel(name: "Burro Tail",
                               needsHealthUpdate: false,
                               task: nil,
                               category: PlantCategory.Succulents)

    var mint = PlantModel(name: "Mint",
                          needsHealthUpdate: true,
                          task: PlantTaskFactory().water,
                          category: PlantCategory.Herbs)

    var miniMonstera = PlantModel(name: "Mini Monstera",
                                  needsHealthUpdate: false,
                                  task: PlantTaskFactory().clean,
                                  category: PlantCategory.Houseplants)

    var monsteraDelicosa = PlantModel(name: "Monstera Delicosa",
                                      needsHealthUpdate: false,
                                      task: PlantTaskFactory().repot,
                                      category: PlantCategory.Houseplants)

    var snakePlant = PlantModel(name: "Snake Plant",
                                needsHealthUpdate: true,
                                task: PlantTaskFactory().repot,
                                category: PlantCategory.Succulents)

    var parsley = PlantModel(name: "Parsley",
                             needsHealthUpdate: false,
                             task: PlantTaskFactory().water,
                             category: PlantCategory.Herbs)

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
