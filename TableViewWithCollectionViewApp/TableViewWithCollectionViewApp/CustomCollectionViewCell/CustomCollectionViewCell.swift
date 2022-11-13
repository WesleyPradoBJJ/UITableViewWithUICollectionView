//
//  CustomCollectionViewCell.swift
//  TableViewWithCollectionViewApp
//
//  Created by Wesley Prado on 13/11/2022.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.contentMode = .scaleAspectFill
    }

    func setupCell(image: String){
        imageView.image = UIImage(named: image)
    }
    
}
