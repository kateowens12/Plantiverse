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
            Text("Pot Size")
                .font(.body)
                .foregroundColor(.black)
                .padding(.horizontal)
            Text("\($potSize.wrappedValue) inch")
                .font(.body)
                .foregroundColor(potSize > 0 ? .black : .gray)
Spacer()
            CustomCountButton(action: decrement, type: .decrement)
                .disabled(potSize <= 0)
            
            CustomCountButton(action: increment, type: .increment)
                .disabled(24 <= potSize)
        }  .accessibilityRepresentation {
            Stepper("Pot Size", value: $potSize,
                    in: 0...24,
                    step: 1)
        }
          //  HStack {
            //    HStack(spacing: 12) {
                    
                
//                    Text("\($potSize.wrappedValue) inch")
//                        .font(.body)
//                        .foregroundColor(potSize > 0 ? .black : .gray)
         //       }

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
