//
//  OutgoingTextTableViewCell.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 31/05/23.
//

import UIKit

class OutgoingTextTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: OutgoingTextTableViewCell.self)
    
    lazy var messageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius  = 22
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner , .layerMaxXMinYCorner]
        view.backgroundColor = .purple
        return view
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 16)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        transform = CGAffineTransform(scaleX: 1, y: -1)
        backgroundColor = .backGround
        selectionStyle = .none
        addElements()
        configConstraints()
    }
    
    private func addElements() {
        contentView.addSubview(messageView)
        messageView.addSubview(messageLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            messageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            messageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            messageView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            messageLabel.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 15),
            messageLabel.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: -15),
            messageLabel.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 15),
            messageLabel.bottomAnchor.constraint(equalTo: messageView.bottomAnchor, constant: -15),
        ])
    }
    
    public func setupCell(message: String) {
        messageLabel.text = message
    }
    
}
