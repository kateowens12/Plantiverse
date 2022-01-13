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
        VStack(alignment: .leading) {
            Text("Tasks To Complete".capitalized)
                .font(.callout)
                .foregroundColor(.gray)
            ForEach(tasks) { plantTask in
                TaskRow(task: plantTask)
                Divider()
            }
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(tasks: [PlantTaskFactory().clean, PlantTaskFactory().water])
    }
}
