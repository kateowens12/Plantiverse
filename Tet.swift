//
//  Tet.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/8/21.
//

import SwiftUI

struct Tet: View {
    var messages: [Message] = [
        Message(subject: "Test",
                sender: "blah.behbeh@meh.com",
                content: "bel;arjg lkej lknwelkfjenj ;lwken,. flkjea;.",
                isVIP: false),
        Message(subject: "O.k.",
                sender: "bhh.beheh@meh.com",
                content: "hey,. ;.",
                isVIP: true),
        Message(subject: "YEAH",
                sender: "bah.behbeh@meh.com",
                content: "what's up.",
                isVIP: false)
    ]

    var body: some View {
        let vipMessages = messages.filter { $0.isVIP }
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(messages) { message in
                        MessageView2(message: message)
                            .overlay(RoundedRectangle(cornerRadius: 50, style: .circular).foregroundColor(.clear).border(Color.blue))
                            .padding()
                    }
                }
            }
            .accessibilityElement(children: .contain)
            .accessibilityRotor("VIPs", entries: vipMessages,
                            entryID: \.id, entryLabel: \.subject)
            // .accessibilityRotor("VIPs", entries: vipMessages, entryLabel: \.subject)
             // .accessibilityRotor("VIPs", entries: vipMessages, entryLabel: \.subject)
        }

    }
}

struct Tet_Previews: PreviewProvider {
    static var previews: some View {
        Tet(messages: [Message(subject: "subject",
                               sender: "blah.behbeh@meh.com",
                               content: "bel;arjg lkej lknwelkfjenj ;lwken,. flkjea;.",
                               isVIP: false),
                       Message(subject: "O.k.",
                               sender: "blh.beh@meh.com",
                               content: "hey.",
                               isVIP: true),
                       Message(subject: "YEAH",
                               sender: "bh.beheh@meh.com",
                               content: "what's up.", isVIP: false)])
    }
}

struct Message: Identifiable {
    var subject: String
    var sender: String
    var content: String
    var isVIP: Bool
    var id = UUID()
}

extension Message {
    var emailAddressRanges: [Range<String.Index>] {
        return [self.sender.index(after: self.sender.startIndex)..<self.sender.endIndex]
    }

    var contentHeadingRanges: [Range<String.Index>] {
        return [self.content.index(after: self.content.startIndex)..<self.content.endIndex]
    }
}
