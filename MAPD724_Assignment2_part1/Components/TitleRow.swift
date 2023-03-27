//
//  TitleRow.swift
//  MAPD724_Assignment2_part1
//
//  Created by Sarthak Vashistha on 2023-03-26.
//

import SwiftUI

struct TitleRow: View {
    
        var imageUrl = URL(string: "https://twitter.com/sarthak3181997/photo")
        var name = "Sarthak Vashistha"
        
        var body: some View {
            HStack(spacing: 20) {
                AsyncImage(url: imageUrl) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .cornerRadius(50)
                } placeholder: {
                    ProgressView()
                }
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title).bold()
                    
                    Text("Online")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "phone.fill")
                    .foregroundColor(.gray)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(50)
            }
            .padding()
        }
    }


struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))    }
}
