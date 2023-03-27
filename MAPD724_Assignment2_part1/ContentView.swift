//
//  ContentView.swift
//  MAPD724_Assignment2_part1
//
//  Created by Sarthak Vashistha on 2023-03-26.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello Sarthak","I am enjoying working on it","I make good jokes and previous one was one of them","I am not just hilarious, I also have a habit of laughting at wrong moments"]
    var body: some View {
        VStack{
            VStack {
                TitleRow()
                
                    ScrollView {
                        ForEach(messageArray, id: \.self) { text in
                            MessageBubble(message: Message(id:
                                                            "1947",text:text, received: true, timestamp: Date()))
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                }
            .background(Color("Peach"))
            MessageField()
        }
            
        }
    }
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

