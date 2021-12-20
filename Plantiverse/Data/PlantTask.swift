//
//  PlantTask.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

struct PlantTask: Identifiable {
    var name: TaskName
    var imageName: String
    var id = UUID()
}

enum TaskName: String {
    case Water = "water"
    case Clean = "clean"
    case Repot = "repot"
    case Fertilize = "fertilize"
}
