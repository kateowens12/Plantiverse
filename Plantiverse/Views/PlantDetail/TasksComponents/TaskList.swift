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
            Spacer()
            Text("Tasks To Complete")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
            ForEach(tasks) { plantTask in
                TaskRow(task: plantTask)
                    .font(.body)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                Divider()
            }
        }.overlay(RoundedRectangle(cornerRadius: 20).background(.gray).opacity(0.10)).edgesIgnoringSafeArea(.bottom)
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(tasks: [PlantTaskFactory().clean, PlantTaskFactory().water])
    }
}
