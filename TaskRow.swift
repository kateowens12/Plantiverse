//
//  TaskRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/9/21.
//

import SwiftUI

struct TaskRow: View {
    var plant: PlantModel

    var body: some View {
        HStack {
            // task image
            
            // task name
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(plant: PlantFactory().pothos)
    }
}
