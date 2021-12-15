//
//  TaskList.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct TaskList: View {
    var tasks: [PlantTask]

    var body: some View {
        List(tasks) { task in
            TaskRow(task: task)
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(tasks: [PlantTaskFactory().clean, PlantTaskFactory().water])
    }
}
