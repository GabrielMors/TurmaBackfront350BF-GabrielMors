//
//  Cell01.swift
//  atividadeTableViewCaio
//
//  Created by Gabriel Mors  on 11/04/23.
//

import UIKit

class Cell01: UITableViewCell {

    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier = "Cell01"
    static func nib()->UINib {
        return UINib(nibName: identifier.self, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    public func setupCell(person: Person) {
        nameLabel.text = person.nameList
        personImageView.image = UIImage(named: person.imageListe)
    }
}
