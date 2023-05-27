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
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.lightPurple
        
        return tableView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.purple
        
        return view
    }()
    
    lazy var subContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.lightPurple
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        
        return view
    }()
    
    lazy var messageTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.tintColor = .white
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.keyboardType = .default
        textField.borderStyle = .none
        textField.textColor = .white
        let attributes: [NSAttributedString.Key: Any] = [
               .foregroundColor: UIColor.white, // Defina a cor desejada do texto do placeholder
               .font: UIFont.systemFont(ofSize: 18.5) // Defina a fonte desejada do texto do placeholder
           ]
           
           // Crie um atributo de texto com os atributos definidos
           let attributedPlaceholder = NSAttributedString(string: "Digite aqui", attributes: attributes)
           
           // Atribua o atributo de texto ao placeholder do TextField
           textField.attributedPlaceholder = attributedPlaceholder
           
        return textField
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton ( )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.darkBlue
//        button.isEnabled = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setImage(UIImage (named: "send"), for: .normal)
        button.addTarget (self, action: #selector (tappedSendButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc private func tappedSendButton() {
        print(#function)
    }
    
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
        contentView.addSubview(subContentView)
        subContentView.addSubview(messageTextField)
        contentView.addSubview(sendButton)
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableViewChat.delegate = delegate
        tableViewChat.dataSource = dataSource
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            tableViewChat.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableViewChat.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewChat.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewChat.bottomAnchor.constraint(equalTo: contentView.topAnchor),
            
            contentView.bottomAnchor.constraint(equalTo: keyboardLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 70),
            
            subContentView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            subContentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subContentView.heightAnchor.constraint(equalToConstant: 50),
            
            messageTextField.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor),
            messageTextField.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -5),
            messageTextField.leadingAnchor.constraint(equalTo: subContentView.leadingAnchor, constant: 10),
            messageTextField.heightAnchor.constraint(equalToConstant: 40),
            
            sendButton.heightAnchor.constraint(equalToConstant: 45),
            sendButton.widthAnchor.constraint(equalToConstant: 45),
            sendButton.centerYAnchor.constraint(equalTo: messageTextField.centerYAnchor, constant: -10),
            sendButton.trailingAnchor.constraint(equalTo: subContentView.trailingAnchor, constant: -5),
            
        ])
    }
}
