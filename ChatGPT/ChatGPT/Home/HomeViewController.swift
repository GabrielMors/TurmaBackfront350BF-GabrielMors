//
//  ViewController.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 25/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var screen: HomeScreen?
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addLogoTofavigationBarItem(image: UIImage(named: "GM_Logo") ?? UIImage())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
        screen?.delegate = self
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = viewModel.loadCurrentMessage(indexPath: indexPath)
        switch model.typeMessage {
        case .user:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: OutgoingTextTableViewCell.identifier, for: indexPath) as? OutgoingTextTableViewCell else {
                return UITableViewCell()
            }
            cell.setupCell(message: model.message)
            return cell
        case .chatGPT:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: IncomingTextMessageTableViewCell.identifier, for: indexPath) as? IncomingTextMessageTableViewCell else {
                return UITableViewCell()
            }
            cell.setupCell(message: model.message)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath: indexPath)
    }
}

extension HomeViewController: HomeScreenProtocol {
    func tappedSendButton(text: String) {
        viewModel.addMessage(message: text)
        screen?.tableViewChat.reloadData()
    }
}

