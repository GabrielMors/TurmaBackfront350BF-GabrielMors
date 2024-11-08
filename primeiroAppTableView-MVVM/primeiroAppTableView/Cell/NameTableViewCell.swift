//
//  NameTableViewCell.swift
//  primeiroAppTableView
//
//  Created by Gabriel Mors  on 06/04/23.
//

import UIKit
//MARK: O IDENTIFIER deve conter o mesmo nome do file
class NameTableViewCell: UITableViewCell {

    static let identifier = String(describing: NameTableViewCell.self)
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(name: tableViewModel) {
        nameLabel.text = name.name
    }
}


