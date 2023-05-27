//
//  HomeScreen.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 25/05/23.
//

import UIKit

class HomeScreen: UIView {

    lazy var tableViewChat: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.showsVerticalScrollIndicator = false
        tableView.isScrollEnabled = true
        
        return tableView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        
        return view
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Digite aqui"
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.keyboardType = .default
        
        return textField
    }()
    
    lazy var subContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        
        return view
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        button.isEnabled = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews() {
        addSubview(tableViewChat)
        addSubview(contentView)
        addSubview(subContentView)
    }
    
    public func configTableViewProtocol(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableViewChat.delegate = delegate
        tableViewChat.dataSource = dataSource
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            tableViewChat.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableViewChat.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewChat.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewChat.bottomAnchor.constraint(equalTo: contentView.topAnchor),
            
            contentView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            contentView.topAnchor.constraint(equalTo: tableViewChat.bottomAnchor, constant: 10),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 70),
        ])
    }
}
