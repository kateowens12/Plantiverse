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
                .accessibilityHidden(true)
                .imageScale(.small)
                .padding(.leading)
            Text(plantTask.name.rawValue)
                .font(.callout)
                .fontWeight(.regular)
                .padding(.top)
                .padding(.trailing)
                .padding(.bottom)
        }
        .background(Color("Deque Gray").opacity(0.65))
        .clipShape(Capsule())
        .fixedSize(horizontal: true, vertical: false)
        .accessibilityHidden(true)
        .accessibilityElement(children: .combine)
        .accessibilityElement(children: .combine)
        .accessibilityCustomContent("Tasks due", Text("\(plantTask.name.rawValue) due"), importance: .high)
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(plantTask: PlantTaskFactory().clean)
    }
}
