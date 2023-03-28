//
//  MessageBubble.swift
//  MAPD724_Assignment2_part1
//  Frameworks App - GeoChat App - Created Simple UI
//
//  Created on 2023-03-26.
/*
    Amrik Singh(301296257)
    Hafiz Shaikh(301282061)
    Krisuv Bohara(301274636)
    Manmeen Kaur(301259638)
    Sarthak Vashistha(301245284)
*/
//  Version 1.0.0

import SwiftUI

struct MessageBubble: View {
    var message: MessageModel
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.messageRecivedStatus ? .leading : .trailing) {
            HStack {
                Text(message.messageContent)
                    .padding()
                    .foregroundColor(Color.white)
                    .background(message.messageRecivedStatus ? Color.blue : Color.green)
                    .cornerRadius(12)
            }
            .frame(maxWidth: 300, alignment: message.messageRecivedStatus ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.dateRecivied.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .background(Color.white)
                    .padding(message.messageRecivedStatus ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.messageRecivedStatus ? .leading : .trailing)
        .padding(message.messageRecivedStatus ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: MessageModel(id: "1947", messageContent: "I am making this UI for the assignment of IOS!", messageRecivedStatus: true, dateRecivied: Date()))
    }
}
