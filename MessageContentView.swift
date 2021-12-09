//
//  MessageContentView.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/8/21.
//

import SwiftUI

struct MessageContentView: View {
    var message: Message

    var body: some View {
        TextEditor(text: .constant(message.content))
//            .accessibilityRotor(.heading, textRanges: message.headingRanges
//            )

//                .accessibilityRotor(.heading) {
//                    ForEach(range in message.contentHeadingRanges) {
//                        AccessibilityRotorEntry(textRange: range)
//                    }
//                }
    }
}

struct MessageContentView_Previews: PreviewProvider {
    static var previews: some View {
        MessageContentView(message: Message(subject: "one", sender: "abc@gmail.com", content: "strings and strings and strings and things.", isVIP: true))
    }
}
