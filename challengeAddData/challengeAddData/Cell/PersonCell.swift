//
//  PersonCell.swift
//  challengeAddData
//
//  Created by Gabriel Mors  on 05/05/23.
//

import UIKit

class PersonCell: UITableViewCell {

    static let identifier: String = String(describing: PersonCell.self)
    
    static public func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    public func setupCell(name: String) {
        photoImageView.image = UIImage(systemName: name)
        nameLabel.text = name
    }
}
