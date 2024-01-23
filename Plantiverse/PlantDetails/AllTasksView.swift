//
//  AllTasksView.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/16/21.
//

import SwiftUI

struct AllTasksView: View {
    var tasks: [PlantTask]

    var body: some View {
        VStack {
            HStack {
                ForEach(tasks) { task in
                    TaskView(plantTask: task )
                    fixedSize(horizontal: true, vertical: false)
                        .padding()
                }
            }
        }
    }
}

struct AllTasksView_Previews: PreviewProvider {
    static var previews: some View {
        AllTasksView(tasks: [PlantTaskFactory().water,
                             PlantTaskFactory().clean,
                             PlantTaskFactory().repot])
    }
}
