//
//  LoginScreenUI.swift
//  MAPD724_Assignment2_part1
//
//  Created by Krisuv Bohara on 2023-03-26.
//

import SwiftUI

struct LoginScreenUI: View {
    @State private var username = ""
       @State private var password = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Login").font(.largeTitle).bold().padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 350, height: 70)
                        .background(Color.black.opacity(0.02))
                        .cornerRadius(10)
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 70)
                        .background(Color.black.opacity(0.02))
                        .cornerRadius(10).padding()
                    
                    NavigationLink(destination: ContentView()) {
                        Button("Login") {}
                        .foregroundColor(.white)
                        .frame(width: 350, height: 50)
                        .background(Color.green)
                        .cornerRadius(16)
                    }
                    
                    HStack {
                        VStack{
                            Divider().overlay(.pink)
                        }.padding()
                        Text("OR").foregroundColor(Color.blue)
                        VStack{
                            Divider().overlay(.pink)
                        }.padding()
                    }
                    
                    NavigationLink(destination: RegisterViewUI()) {
                        Button("Register") {}
                        .foregroundColor(.white)
                        .frame(width: 350, height: 50)
                        .background(Color.blue)
                        .cornerRadius(16)
                    }
                    
                   

                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}


struct LoginScreenUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenUI()
    }
}
