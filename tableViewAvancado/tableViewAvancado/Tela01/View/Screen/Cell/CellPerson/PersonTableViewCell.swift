//
//  PersonTableViewCell.swift
//  tableViewAvancado
//
//  Created by Gabriel Mors  on 14/04/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "PersonTableViewCell"
    static func nib() -> UINib {
        UINib(nibName: identifier.self, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
            }
    
    public func setupCell(person: Person) {
        photoImageView.image = UIImage(systemName: person.nameImage)
        nameLabel.text = person.name
    }
}
