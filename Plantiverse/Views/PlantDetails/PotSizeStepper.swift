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
                HStack(spacing: 12) {
                    Text("Pot Size")
                        .font(.body)
                        .foregroundColor(.black)
                        
                        Text("\($potSize.wrappedValue) inch")
                            .font(.body)
                            .foregroundColor(potSize > 0 ? .black : .gray)
                }
              
                    HStack {
                        Spacer()
                        CustomCountButton(action: decrement, type: .decrement)
                            .padding(.leading, 12)
                        CustomCountButton(action: increment, type: .increment)
                            .padding(.trailing, 12)

                    }
                    //.accessibilityElement(children: .contain)
                
                .accessibilityElement(children: .contain)
            }
            // am i going overboard with these a11y element behavior view modifiers? 
        .accessibilityElement(children: .contain)
        .accessibilityElement(children: .combine)
        
        .accessibilityRepresentation {
            Stepper {
                Text("Pot Size: \(potSize) inch")
            } onIncrement: {
                increment()
            } onDecrement: {
                decrement()
            }
        }
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
