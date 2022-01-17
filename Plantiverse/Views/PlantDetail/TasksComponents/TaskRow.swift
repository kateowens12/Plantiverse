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
            Image(systemName: task.imageName)
                .imageScale(.medium)
            Text(task.name.rawValue)
                Spacer()
        }
        .accessibilityElement(children: .combine)
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: PlantTaskFactory().clean)
    }
}
