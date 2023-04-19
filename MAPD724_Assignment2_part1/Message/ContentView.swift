//
//  ContentView.swift
//  MAPD724_Assignment2_part1
//
//  Created by Sarthak Vashistha on 2023-03-26.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var model: UserModel?
    @State private var showTime = false
    @ObservedObject var viewModel = MessageManager()
    
    
    var messageArray = ["Hello I am Sarthak","This is the chat View","It is a simple chat view","My teammates are Krisuv, Manmeen, Hafiz and Amreek."]
    
    var messageArrayTwo = ["Hello I am Krisuv","This is the chat View","It is a simple chat view","My teammates are Sarthak, Manmeen, Hafiz and Amreek."]
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer().navigationBarBackButtonHidden(true).toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading, content: {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack {
                                Image(systemName: "house") // set image here
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                Text("Go back")
                            }
                        }
                    })
                })
                
                ScrollView {
                    
                    ForEach(viewModel.chatMessages, id: \.self) { text in
                        
                        VStack {
                            if text.fromId == Auth.auth().currentUser?.uid {
                                                      HStack {
                                                          Spacer()
                                                          HStack {
                                                              Text(text.content)
                                                                  .foregroundColor(.white)
                                                          }
                                                          .padding()
                                                          .background(Color.blue)
                                                          .cornerRadius(8)
                                                      }
                                                  } else {
                                                      HStack {
                                                          HStack {
                                                              Text(text.content)
                                                                  .foregroundColor(.black)
                                                          }
                                                          .padding()
                                                          .background(Color.white)
                                                          .cornerRadius(8)
                                                          Spacer()
                                                      }
                                                  }
                                              }
                                              .padding(.horizontal)
                                              .padding(.top, 8)
                                              
                                          }
                    }
                }
                MessageField(
                    model: $model)
                
            }.navigationTitle(model?.username ?? "").navigationBarTitleDisplayMode(.inline).navigationBarBackButtonHidden(true).onAppear() {
                self.viewModel.getMessages(userid: model?.id ?? "")
            }
            
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        
        @State static var mods: UserModel?
        static var previews: some View {
            ContentView(model:$mods)
        }
    }

