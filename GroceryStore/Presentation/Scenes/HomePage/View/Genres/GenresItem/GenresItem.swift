//
//  GenresItem.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

class GenresItem: UICollectionViewCell {

    @IBOutlet weak var colorLayer: UIView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    private let viewCornerRadius = CGFloat(15)
    private let imageCornerRadius = CGFloat(10)


    override func awakeFromNib() {
        super.awakeFromNib()
        configureImage()
    }
    
   private func configureImage() {
        colorLayer.clipsToBounds = true
        colorLayer.layer.cornerRadius = viewCornerRadius
        imageOne.layer.cornerRadius = imageCornerRadius
        imageTwo.layer.cornerRadius = imageCornerRadius
        imageThree.layer.cornerRadius = imageCornerRadius
    }
    
    func configure(with item: News) {
        let posterURL = URL(string: item.pictureUrl ?? "")
        imageOne.kf.setImage(with: posterURL)
        imageTwo.kf.setImage(with: posterURL)
        imageThree.kf.setImage(with: posterURL)
        self.labelTitle.text = item.title ?? ""
    
    }

}
