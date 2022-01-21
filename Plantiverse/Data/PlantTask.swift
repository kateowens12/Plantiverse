//
//  PlantTask.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class PlantTask: ObservableObject, Identifiable {
    @Published var name: TaskName
    @Published var imageName: String
    var id = UUID()
    
    init(name: TaskName, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}

enum TaskName: String {
    case Water = "water"
    case Clean = "clean"
    case Repot = "repot"
    case Fertilize = "fertilize"
    case NA = "None"
}
