//
//  GrupTableViewCell.swift
//  tableViewAvancado
//
//  Created by Gabriel Mors  on 14/04/23.
//

import UIKit

class GrupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    
    
    static let identifier: String = "GrupTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier.self, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setupCell(grup: Grup) {
        nameImageView.image = UIImage(systemName: grup.NameImage)
        nameLabel.text = grup.nameLabel
        jobLabel.text = grup.nameJob
        salaryLabel.text = grup.salary
    }
    
}
