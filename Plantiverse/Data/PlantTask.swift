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
    case Water = "water in 2 days"
    case Clean = "clean tomorrow"
    case Repot = "repot today"
}
