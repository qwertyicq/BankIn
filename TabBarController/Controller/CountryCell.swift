//
//  CountryCell.swift
//  TabBarController
//
//  Created by Nikolay T on 06.02.2023.
//

import UIKit

class CountryCell: UITableViewCell {

    var countryImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        label.layer.borderWidth = 1
        label.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        self.setLayout()
        self.setConstraint()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func setLayout() {
        self.addSubview(countryImage)
        self.addSubview(nameLabel)
    }



///TODO: разобраться с поворотом и констрейнтами
    private func setConstraint() {
        NSLayoutConstraint.activate([
            self.countryImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.countryImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8),
            self.countryImage.heightAnchor.constraint(equalToConstant: 150),
            self.countryImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)])

        NSLayoutConstraint.activate([
            //self.nameLabel.leadingAnchor.constraint(equalTo: self.countryImage.trailingAnchor, constant: 10),
            //self.nameLabel.topAnchor.constraint(equalTo: self.topAnchor),
            self.nameLabel.widthAnchor.constraint(equalToConstant: 150),
            self.nameLabel.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.1),
            self.nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)])

        self.nameLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }
    
}
