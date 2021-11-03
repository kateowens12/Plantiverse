//
//  TaskView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import SwiftUI

struct TaskView: View {
    var plantTask: PlantTask

    var body: some View {
        HStack {
            Image(systemName: plantTask.imageName)
                .fixedSize()
                .accessibilityHidden(true)
            Text(plantTask.name.rawValue)
                .font(.footnote)
        }.accessibilityHidden(true)
        .accessibilityElement(children: .combine)
        .accessibilityCustomContent(.task, plantTask.name.rawValue, importance: .high)
    }
}

extension AccessibilityCustomContentKey {
    static var task: AccessibilityCustomContentKey {
        AccessibilityCustomContentKey("Task")
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(plantTask: PlantTaskFactory().clean)
    }
}
