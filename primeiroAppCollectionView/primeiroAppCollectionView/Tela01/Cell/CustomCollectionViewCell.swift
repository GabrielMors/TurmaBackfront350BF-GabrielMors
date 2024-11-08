//
//  CustomCollectionViewCell.swift
//  primeiroAppCollectionView
//
//  Created by Gabriel Mors  on 20/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static public func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    private func configElements() {
        carImageView.contentMode = .scaleAspectFill
    }
    
    public func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }

}
