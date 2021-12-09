//
//  TaskList.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct TaskList: View {
    var plant: PlantModel

    var body: some View {
        // list of all tasks
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(plant: PlantFactory().pothos)
    }
}
