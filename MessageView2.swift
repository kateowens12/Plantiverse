//
//  MessageView2.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/8/21.
//

import SwiftUI

struct MessageView2: View {
    var message: Message
    var body: some View {
        NavigationLink(destination: MessageContentView(message: message)) {
            LazyVStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Subject:")
                            .fontWeight(.light)
                        Text(message.subject)
                            .font(.headline)
                    }
                    HStack {
                        Text("Sender:")
                            .fontWeight(.light)
                        Text(message.sender)
                            .font(.callout)
                    }
                }.padding()

                Divider()
                Text(message.content)
                    .font(.body)
                    .padding()
            }
        }
    }
}

struct MessageView2_Previews: PreviewProvider {
    static var previews: some View {
        MessageView2(message: Message(subject: "Topics",
                                      sender: "blah.behbeh@meh.com",

                                      content: "Hey. What's going on?",
                                      isVIP: false)
        )
    }
}
