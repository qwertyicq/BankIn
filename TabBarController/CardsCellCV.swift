//
//  CardsCellCV.swift
//  TabBarController
//
//  Created by Nikolay T on 07.02.2023.
//

import UIKit

class CardsCellCV: UICollectionViewCell {

    var cardImage: UIImageView = {
        let out = UIImageView()
        out.image = UIImage(named: "SA")
        out.translatesAutoresizingMaskIntoConstraints = false
        return out
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setLayout()
        self.setConstraint()

        self.backgroundColor = .systemGray2

    }

    private func setLayout() {
        self.addSubview(cardImage)
    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: 160),
            self.heightAnchor.constraint(equalToConstant: 60)])
        
        NSLayoutConstraint.activate([
            self.cardImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            self.cardImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            self.cardImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            self.cardImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)])
    }

}
