//
//  PlantModel.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

import SwiftUI

class PlantModel: ObservableObject, Identifiable {
    @Published var name: String
    @Published var needsHealthUpdate: Bool
    @Published var task: PlantTask?
    @Published var category: PlantCategory
    var id = UUID()
    @Published var health: PlantHealth?
    @Published var image: Image?
    @Published var distanceFromWindow: Int?
    @Published var potSize: Int?
    @Published var hasBeenRepotted: Bool = false
    @Published var room: Room?
    
    var hasTask: Bool {
        return task != nil
    }

    var allTasks: [PlantTask]? {
        guard let theTask = task else { return nil }
        var all = [PlantTask]()
        all.append(theTask)
        return all
    }
    
    init(name: String, needsHealthUpdate: Bool, task: PlantTask?, category: PlantCategory, health: PlantHealth?, image: Image?, distanceFromWindow: Int?, potSize: Int?, hasBeenRepotted: Bool, room: Room) {
        self.name = name
        self.needsHealthUpdate = needsHealthUpdate
        self.category = category
        self.potSize = potSize
        self.health = health
        self.distanceFromWindow = distanceFromWindow
        self.room = room
    }
}
