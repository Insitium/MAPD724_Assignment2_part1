//
//  TitleRow.swift
//  MAPD724_Assignment2_part1
//
//  Created by Sarthak Vashistha on 2023-03-26.
//

import SwiftUI

struct TitleRow: View {
        
        var body: some View {
            HStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .padding(10)
                    .cornerRadius(50)
                    .frame(width: 32.0, height: 32.0)

                                
                VStack(alignment: .leading) {
                    Text("Sarthak Vashistha")
                        .font(.title).bold()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
        }
    }


struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
               }
}
