//
//  MessageField.swift
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

struct MessageField: View {
    @State private var message = ""
    @State private var text = ""

    var body: some View {
        HStack {
            TextField("Enter Message", text: $text)
            Button {
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.green)
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.gray).opacity(0.5)
        .cornerRadius(50)
        .padding()
        
    }
}
    
    struct MessageField_Previews: PreviewProvider {
        static var previews: some View {
            MessageField()
        }
    }
