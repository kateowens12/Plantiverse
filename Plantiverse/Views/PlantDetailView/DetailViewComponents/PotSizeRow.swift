//
//  PotSizeRow.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/19/22.
//

import SwiftUI

struct PotSizeRow: View {
    @State var potSize: Int?
    
    var noPotSize: Bool {
        return potSize == 0 || potSize == nil
    }
    
    var body: some View {
        HStack {
            Text("Pot size:")
            
            potSize.map { size in
                Text("\(size) inch")
            }
            .padding()
            
            if noPotSize {
                Text("Unspecified")
            }
        }
    }
}

struct PotSizeRow_Previews: PreviewProvider {
    static var previews: some View {
        PotSizeRow()
    }
}
