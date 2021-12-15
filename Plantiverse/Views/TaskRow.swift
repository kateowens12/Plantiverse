//
//  TaskRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct TaskRow: View {
    var task: PlantTask

    var body: some View {
        HStack {
            // task image
            Image(task.imageName)
                .padding()
            Text(task.name.rawValue)
            // task name
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: PlantTaskFactory().clean)
    }
}
