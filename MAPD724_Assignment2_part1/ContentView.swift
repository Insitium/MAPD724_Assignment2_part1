//
//  ContentView.swift
//  MAPD724_Assignment2_part1
//
//  Created by Sarthak Vashistha on 2023-03-26.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello I am Sarthak","This is the chat View","It is a simple chat view","My teammates are Krisuv, Manmeen, Hafiz and Amreek."]
    
    var messageArrayTwo = ["Hello I am Krisuv","This is the chat View","It is a simple chat view","My teammates are Sarthak, Manmeen, Hafiz and Amreek."]
    var body: some View {
        NavigationView{
            VStack{
                VStack {
                    TitleRow()
        
                    ScrollView {
                        ForEach(messageArray, id: \.self) { text in
                            MessageBubble(message: MessageModel(id: "200", messageContent: text, messageRecivedStatus: true, dateRecivied: Date()
                                                               ))
                        }
                            ForEach(messageArrayTwo, id: \.self) { text in
                                MessageBubble(message: MessageModel(id: "200", messageContent: text, messageRecivedStatus: false, dateRecivied: Date()
                                                                ))
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                }
                .background(Color("White"))
                MessageField()
            }
        }.navigationBarBackButtonHidden(true)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

