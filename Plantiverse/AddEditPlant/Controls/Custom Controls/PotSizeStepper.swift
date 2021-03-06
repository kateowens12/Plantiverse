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
        VStack {
            HStack {
                Text("Pot Size")
                    .font(.body)
                    .foregroundColor(Color("Deque Black"))
                Spacer()
                VStack {
                    Text("\($potSize.wrappedValue) inch")
                        .font(.body)
                        .foregroundColor(potSize > 0 ? .black : .gray)
                        .accessibilityHidden(true)
                    HStack {
                        CustomStepperButton(action: decrement, type: .decrement)
                            .disabled(potSize == 0)
                        
                        CustomStepperButton(action: increment, type: .increment)
                            .disabled(24 <= potSize)
                    }
                    .background(.thinMaterial, in: Capsule())
                    .contentShape(Capsule())
                }
                .accessibilityElement(children: .combine)
            }
        }
        .padding(.vertical)
        .accessibilityRepresentation {
            Stepper(value: $potSize, in: 0...24, step: 1) {
                Text("Pot Size")
            }
        }
        .accessibilityValue("\(Int($potSize.wrappedValue)) inch")
       //  the a11y Representation won't work unless voiceover is turned off and back on when you land on the screen where it lives
        .accessibilityElement(children: .combine)
    }
    
    func increment() {
        $potSize.wrappedValue += 1
    }
    
    func decrement() {
        $potSize.wrappedValue -= 1
    }
}

struct PotSizeStepper_Previews: PreviewProvider {
    static var previews: some View {
        PotSizeStepper()
    }
}

//TODO: make the colors reuseable variables that are less annoying to call
