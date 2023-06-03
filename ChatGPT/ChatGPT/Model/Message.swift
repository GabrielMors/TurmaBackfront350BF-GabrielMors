//
//  Message.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 31/05/23.
//

import Foundation

enum TypeMessage {
    case user
    case chatGPT
}

struct Message {
    var message: String
    var typeMessage: TypeMessage
}
