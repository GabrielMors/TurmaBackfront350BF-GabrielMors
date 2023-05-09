//
//  TableViewCell.swift
//  desafioNotificationCenter
//
//  Created by Gabriel Mors  on 09/05/23.
//

import UIKit

class CellOfTela02: UITableViewCell {
    
    static let identifier: String = String(describing: CellOfTela02.self)
    
    static public func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func setupCell(name: Person) {
        nameLabel.text = name.name
    }
    
}
