//
//  CustomCountButton.swift
//  Plantiverse
//
//  Created by Kate Owens on 1/13/22.
//

import SwiftUI

struct CustomCountButton: View {
    var action: () -> Void
    var type: ButtonType
    @Environment(\.isEnabled) var isEnabled
    
    var body: some View {
        Button(action: action) {
            Image(systemName: type.imageName)
                .frame(minWidth: 44.0, minHeight: 44.0)
                .symbolVariant(isEnabled ? .circle.fill : .circle)
                .imageScale(.large)
                .padding()
                .contentShape(Rectangle())
                .opacity(0.5)
                .accessibilityLabel(Text(type.a11yLabel))
        }
        .buttonStyle(.plain)
    }
}

extension CustomCountButton {
    enum ButtonType {
        case increment
        case decrement
        
        var imageName: String {
            switch self {
            case .increment:
                return "plus"
            case .decrement:
                return "minus"
            }
        }
        
        var a11yLabel: String {
            switch self {
            case .increment:
                return "Increment"
            case .decrement:
                return "Decrement"
            }
        }
    }
}

struct CustomCountButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomCountButton(action: {
            print("increment tapped")
        }, type: .increment)
    }
}
