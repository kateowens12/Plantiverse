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
        VStack(alignment: .leading) {
            HStack {
                //Spacer()
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
            Spacer()
        }//.accessibilityElement(children: .combine)
        //// why am i forgetting all teh stepper things ahhh
                /// add stepper a11y representation here once brain is less meh
                    .accessibilityRepresentation {
                        Stepper(value: $potSize, in: 0...1000) {
                            Text("Pot size")
                        }.accessibilityValue(Text("\(potSize) inch"))
                }
        }
}

struct PotSizeStepper_Previews: PreviewProvider {
    static var previews: some View {
        PotSizeStepper()
    }
}
