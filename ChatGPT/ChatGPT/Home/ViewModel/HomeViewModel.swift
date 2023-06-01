//
//  HomeViewModel.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 31/05/23.
//

import UIKit

class HomeViewModel {
    
    private var messageList: [Message] = [Message(message: "Olá, Tudo bem?", typeMessage: .user),
                                          Message(message: "Olá, Estou ótimo?", typeMessage: .chatGPT),
    ]

    public var numberOfRowsInSection: Int {
        return messageList.endIndex
    }
    
    public func loadCurrentMessage(indexPath: IndexPath) -> Message {
        return messageList[indexPath.row]
    }
    
    public func heightForRowAt(indexPath: IndexPath) -> CGFloat {
        return messageList[indexPath.row].message.heightWithConstrainedWidth(width: 220, font: UIFont(name: "HelveticaNeue-Medium", size: 16) ?? UIFont()) + 60
    }
    
    public func addMessage(message: String, type: TypeMessage = .user) {
        messageList.insert(Message(message: message.trimmingCharacters(in: .whitespacesAndNewlines), typeMessage: type), at: .zero)
    }
}
