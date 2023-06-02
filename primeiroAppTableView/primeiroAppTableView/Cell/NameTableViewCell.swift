//
//  NameTableViewCell.swift
//  primeiroAppTableView
//
//  Created by Gabriel Mors  on 06/04/23.
//

import UIKit
//MARK: O IDENTIFIER deve conter o mesmo nome do file
class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier = "NameTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
