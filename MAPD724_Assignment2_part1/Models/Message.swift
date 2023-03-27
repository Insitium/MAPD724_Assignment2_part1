//
//  Message.swift
//  MAPD724_Assignment2_part1
//
//  Created by Sarthak Vashistha on 2023-03-26.
//

import Foundation
struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
