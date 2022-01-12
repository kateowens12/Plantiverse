//
//  PotSizeStepper.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/12/22.
//

import SwiftUI

struct PotSizeStepper: View {
    @State var potSize: Int = 0
    
    var body: some View {
        HStack {
            Spacer()
            Text("Pot Size")
                .font(.body)
                .padding()
            Spacer()
            VStack {
                Text("\($potSize.wrappedValue) inch")
                    .font(.body)
                    .padding(.bottom, 4)
                HStack(alignment: .center) {
                    IncrementButton()
                    DecrementButton()
                }
            }
            Spacer()
        }
//        .accessibilityRepresentation {
//            Stepper("Pot Size") {
//                $potSize.wrappedValue += 1
//            } onDecrement: {
//                $potSize.wrappedValue -= 1
//            }
//
//        }
    }
}

struct PotSizeStepper_Previews: PreviewProvider {
    static var previews: some View {
        PotSizeStepper()
    }
}
