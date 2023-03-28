//
//  RegisterViewUI.swift
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

struct RegisterViewUI: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Register").font(.largeTitle).bold().padding()
                    
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
                    
                    HStack {
                        VStack{
                            TextField("Location", text: $username)
                                .padding()
                                .frame(width: 250, height: 70)
                                .background(Color.black.opacity(0.02))
                                .cornerRadius(10)                    }
                        VStack{
                            Button("Get") {}
                            .foregroundColor(.white)
                            .frame(width: 65, height: 50)
                            .background(Color.green)
                            .cornerRadius(8)
                        }.padding()
                    }
                    
                    NavigationLink(destination: LoginScreenUI()) {
                        Button("Register") {}
                        .foregroundColor(.white)
                        .frame(width: 350, height: 50)
                        .background(Color.blue)
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
                    
                    NavigationLink(destination: LoginScreenUI()) {
                        Button("Login") {}
                        .foregroundColor(.white)
                        .frame(width: 350, height: 50)
                        .background(Color.green)
                        .cornerRadius(16)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct RegisterViewUI_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViewUI()
    }
}
