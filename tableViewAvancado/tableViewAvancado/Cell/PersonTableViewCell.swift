//
//  PersonTableViewCell.swift
//  tableViewAvancado
//
//  Created by Gabriel Mors  on 14/04/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    static let identifier: String = "PersonTableViewCell"
    static func nib() -> UINib {
        UINib(nibName: identifier.self, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
