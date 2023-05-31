//
//  Message.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 31/05/23.
//

import Foundation

enum typeMessage {
    case user
    case chatGPT
}

struct Message {
    var message: String
    var typeMessage: typeMessage
}
