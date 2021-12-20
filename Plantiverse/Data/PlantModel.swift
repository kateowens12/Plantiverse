//
//  PlantModel.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

import SwiftUI

struct PlantModel: Identifiable {
    var name: String
    @State var needsHealthUpdate: Bool
    var task: PlantTask?
    var category: PlantCategory
    var id = UUID()
    var status: Status?
    var image: Image? = Image("pothos")

    var hasTask: Bool {
        return task != nil
    }

    var allTasks: [PlantTask]? {
        guard let theTask = task else { return nil }
        var all = [PlantTask]()
        all.append(theTask)
        // do we have a task?
        // unwrap it and add to array

        return all
    }
}

