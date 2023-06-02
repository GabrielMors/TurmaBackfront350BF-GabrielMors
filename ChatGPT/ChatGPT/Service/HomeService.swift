//
//  HomeService.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 01/06/23.
//

import UIKit
import OpenAISwift

class HomeService {
    
    func sendMessage(text: String, completion: @escaping (Result<String, OpenAIError>) -> Void) {
        OpenAISwift(authToken: "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").sendCompletion(with: text, model: .gpt3(.davinci), maxTokens: 4000) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    let message: String = data.choices?.first?.text ?? ""
                    completion(.success(message))
                case .failure(let failure):
                    completion(.failure(failure))
                }
            }
        }
    }
}
